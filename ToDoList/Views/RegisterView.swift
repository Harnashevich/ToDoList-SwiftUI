//
//  RegisterView.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(
                title: "Register",
                subtitle: "Start organizing tods",
                angue: 15,
                background: .orange
            )
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
