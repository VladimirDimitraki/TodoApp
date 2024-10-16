//
//  TodoStorage.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

class TodoStorage {
    private var storage: [TodoItem]
    
    private init() {
        self.storage = []
    }
    
    func addTodo(todo: TodoItem) {
        self.storage.append(todo)
    }
    
    func removeTodo(todo: TodoItem) {
        if let index = storage.firstIndex(where: { $0 === todo }) {
            storage.remove(at: index)
        }
    }
    
//    func editTodo(todo: TodoItem) {
//        
//    }
}
