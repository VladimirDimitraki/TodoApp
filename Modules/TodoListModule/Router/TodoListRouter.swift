//
//  Router.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import UIKit

protocol TodoListRouterProtocol {
    static func createTodoListModule() -> UIViewController
    
    func presentToDoDetailScreen(from view: TodoListViewProtocol, for todo: TodoItem)
}
