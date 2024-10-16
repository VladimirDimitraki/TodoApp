//
//  TodoListViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import UIKit

protocol TodoListViewProtocol: AnyObject {
    var presenter: TodoListPresenterProtocol? { get set }
    
    func showTodos(todos: [TodoItem])
    func showErrorMessage(message: String)
}

class TodoListViewController: UIViewController {
    var todoTableView = UITableView()
    
    var todos: [TodoItem] = [TodoItem(title: "first task", description: "some desc"), TodoItem(title: "second task", description: "some desc"),TodoItem(title: "third task", description: "some desc"), TodoItem(title: "fourth task", description: "some desc")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoTableView = UITableView(frame: view.bounds, style: .insetGrouped)
        todoTableView.register(TodoCellView.self, forCellReuseIdentifier: "TodoItem")
        
        todoTableView.delegate = self
        todoTableView.dataSource = self
        todoTableView.backgroundColor = .gray
        todoTableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(todoTableView)
        constraintTableView()
    }
    
    func constraintTableView() {
        NSLayoutConstraint.activate([
            todoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            todoTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            todoTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            todoTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
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
        
        let todo = todos[indexPath.row]
        
        cell.titleLabel.text = todo.title
        cell.descriptionLabel.text = todo.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

