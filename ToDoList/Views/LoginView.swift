//
//  LoginView.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    angue: -15,
                    background: .pink
                )

                // Login Form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                
                .offset(y: -50)
                
                // Create Account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Cteate An Account") {
                        RegisterView()
                           
                    }

                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
