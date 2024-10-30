//
//  ViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import UIKit

class ViewController: UIViewController {
    var todoListView = TodoListViewController()
    var todoHeaderView = TodoHeaderViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.backgroundMainColor
        
        addChild(todoListView)
        addChild(todoHeaderView)
        
        view.addSubview(todoListView.view)
        view.addSubview(todoHeaderView.view)
        
        todoHeaderView.didMove(toParent: self)
        todoListView.didMove(toParent: self)
        
        setListViewConstraints()
        setHeaderViewConstraints()
    }
}

extension ViewController {
    func setListViewConstraints() {
        todoListView.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            todoListView.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 170),
            todoListView.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            todoListView.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            todoListView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ViewController {
    func setHeaderViewConstraints() {
        todoHeaderView.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            todoHeaderView.view.topAnchor.constraint(equalTo: view.topAnchor),
            todoHeaderView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            todoHeaderView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            todoHeaderView.view.bottomAnchor.constraint(equalTo: todoListView.view.topAnchor)
        ])
    }
}
