//
//  TodoListInteractor.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

protocol TodoListInteractorInputProtocol: AnyObject {
    var presenter: TodoListInteractorOutputProtocol? { get set }

    func retrieveTodos()
    func saveTodo(todo: TodoItem)
    func deleteTodo(todo: TodoItem)
}

protocol TodoListInteractorOutputProtocol: AnyObject {
    func didAddTodo(_ todo: TodoItem)
    func didRemoveTodo(_ todo: TodoItem)
    func didRetrieveTodos(_ todos: [TodoItem])
    func onError(message: String)
}
