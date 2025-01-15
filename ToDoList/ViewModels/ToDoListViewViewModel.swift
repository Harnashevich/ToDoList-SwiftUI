//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import FirebaseFirestore
import Foundation

final class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection ("todos")
            .document(id)
            .delete()
    }
}
