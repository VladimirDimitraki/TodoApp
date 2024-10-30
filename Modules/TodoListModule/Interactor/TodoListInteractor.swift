//
//  TodoListInteractor.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

protocol TodoListInteractorInputProtocol: AnyObject {
    var presenter: TodoListInteractorOutputProtocol? { get set }
}

protocol TodoListInteractorOutputProtocol: AnyObject {

}

class TodoListInteractor: TodoListInteractorInputProtocol {
    weak var presenter: TodoListInteractorOutputProtocol?
    
    var todosStore: [TodoItem] = [TodoItem(title: "first task", description: "some desc"), TodoItem(title: "second task", description: "some desc"),TodoItem(title: "third task", description: "some desc"), TodoItem(title: "fourth task", description: "some desc")]
    
    
}
