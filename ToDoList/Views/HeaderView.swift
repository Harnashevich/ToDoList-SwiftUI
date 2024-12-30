//
//  HeaderView.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angue: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angue))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }
            
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -200)
    }
}

#Preview {
    HeaderView(
        title: "Title",
        subtitle: "Subtitle",
        angue: 15,
        background: .pink
    )
}
