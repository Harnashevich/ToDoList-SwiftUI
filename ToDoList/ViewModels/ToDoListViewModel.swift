//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import Foundation

final class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
