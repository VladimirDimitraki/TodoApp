//
//  TodoListViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import UIKit

protocol TodoListViewProtocol: AnyObject {
    var presenter: TodoListPresenterProtocol? { get set }
}

class TodoListViewController: UIViewController {
    var presenter: TodoListPresenterProtocol?
    var todoTableView = UITableView()
    
    var todos: [TodoItem] = [TodoItem(title: "first task", description: "some desc"), TodoItem(title: "second task", description: "some desc"),TodoItem(title: "third task", description: "some desc"), TodoItem(title: "fourth task", description: "some desc")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoTableView = UITableView(frame: view.bounds, style: .insetGrouped)
        todoTableView.register(TodoCellView.self, forCellReuseIdentifier: "TodoItem")
        
        todoTableView.delegate = self
        todoTableView.dataSource = self
        todoTableView.backgroundColor = .clear
        
        view.addSubview(todoTableView)
    }
}

extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItem", for: indexPath) as! TodoCellView
        
        let todo = todos[indexPath.section]
        
        cell.titleLabel.text = todo.title
        cell.descriptionLabel.text = todo.description
        cell.dayLabel.text = "\(todo.dataCreated)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

