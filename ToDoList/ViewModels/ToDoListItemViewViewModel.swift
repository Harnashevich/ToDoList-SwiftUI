//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Andrei Harnashevich on 16.12.24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

final class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
 
