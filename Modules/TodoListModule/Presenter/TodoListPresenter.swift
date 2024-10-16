//
//  TodoListPresenter.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import Foundation

protocol TodoListPresenterProtocol: AnyObject {
    var view: TodoListViewProtocol? { get set }
    var interactor: TodoListInteractorInputProtocol? { get set }
    var router: TodoListRouterProtocol? { get set }
    
    func viewWillAppear()
    func showTodoDetail(todo: TodoItem)
    func addTodo(todo: TodoItem)
    func removeTodo(todo: TodoItem)
}

class TodoListPresenter: TodoListPresenterProtocol {
    var view: TodoListViewProtocol?
    
    var interactor: TodoListInteractorInputProtocol?
    
    var router: TodoListRouterProtocol?
    
    func viewWillAppear() {
        
    }
    
    func showTodoDetail(todo: TodoItem) {
        guard let view = view else {
            return
        }
        
        router?.presentToDoDetailScreen(from: view, for: todo)
    }
    
    func addTodo(todo: TodoItem) {
        
    }
    
    func removeTodo(todo: TodoItem) {
        
    }
    
    
}
