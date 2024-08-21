//
//  RegistrationView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 31/7/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject  var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(
            title: "Register",
            subtitle: "Start organizing todos",
            angle: -15,
            background: .orange)
        Form{
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            TLButton(
                title: "Create Account",
                backgroundColor: .green,
                textColor: .white){
                    viewModel.register()
            }.padding()
        }
        .offset(y:-50)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
