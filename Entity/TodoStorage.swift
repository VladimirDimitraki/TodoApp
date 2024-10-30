//
//  TodoStorage.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

final class TodoStorage {
    let shared = TodoStorage()
    public private(set) var storage: [TodoItem]
    
    var todos: [TodoItem] {
        return storage
    }
    
    private init() {
        self.storage = []
    }
    
    func addTodo(todo: TodoItem) {
        storage.append(todo)
    }
    
    func deleteTodo(todo: TodoItem) {
        if let index = storage.firstIndex(where: { $0 === todo }) {
            storage.remove(at: index)
        }
    }
    
    func createTodo(todo: TodoItem) -> TodoItem {
        let newTodo = TodoItem(title: todo.title,
                               description: todo.description,
                               isCompleted: todo.isCompleted)
        return newTodo
    }
}
