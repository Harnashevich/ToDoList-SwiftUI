//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color.secondary)
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone()
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
        .padding()
    }
}

#Preview {
    ToDoListItemView(item: .init(
        id: "123",
        title: "Get milk",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: true
    ))
}
