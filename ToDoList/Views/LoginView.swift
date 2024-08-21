//
//  LoginView.swift
//  ToDoList
//
//  Created by Enamul Haque Shamim on 31/7/24.
//

import SwiftUI

struct LoginView: View {
   @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        VStack(content: {
            //Header
            HeaderView(title: "To Do List", subtitle: "Let's things done", angle: 15, background: .pink)
           
            //Login Form
            Form{
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Log In", backgroundColor: .blue, textColor: .white){
                    // Attemt to login
                    viewModel.login()
                }
                .padding()
            }
            .offset(y:-50)
            //Create Account
            VStack{
                Text("New around here?")
                NavigationLink("Create An Account", destination: RegisterView())
            }
            .padding(.bottom, 50)
            Spacer()
        })
    }
}

#Preview {
    LoginView()
}
