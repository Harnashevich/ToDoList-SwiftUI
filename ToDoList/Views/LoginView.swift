//
//  LoginView.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)
                            
                            Text("Log In")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
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
