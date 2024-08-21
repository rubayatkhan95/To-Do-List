//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Rubayat Shusmita Khan on 31/7/24.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func login(){
        guard validate() else{
            return
        }
        //Try login 
        Auth.auth().signIn(withEmail: email, password: password)
    }
     
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please filled in all fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Please enter valid email"
            return false
        }
        return true
    }
    // init(email: String = "", password: String = "") {
//        self.email = email
//        self.password = password
//    }
}
