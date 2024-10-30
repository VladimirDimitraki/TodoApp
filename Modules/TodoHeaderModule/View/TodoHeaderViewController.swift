//
//  TodoHeaderViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/21/24.
//

import UIKit

class TodoHeaderViewController: UIViewController {
    var dateLabel = TodoHeadLabel()
    var dayOfWeekLabel = TodoHeadLabelDayOfWeek()
    var sortCollectionView: TodoSortCollectionView!
    
    let defaultPadding: CGFloat = 20
    let bottonSafeAreaPadding: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        let layout = UICollectionViewFlowLayout()
        sortCollectionView = TodoSortCollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(dateLabel)
        view.addSubview(sortCollectionView)
        view.addSubview(dayOfWeekLabel)
        
        setDateConstraints()
        setChoicePickerConstraints()
        setDayOfWeekConstraints()
    }
}

extension TodoHeaderViewController {
    func setDateConstraints() {
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateLabel.widthAnchor.constraint(equalToConstant: 200),
            dateLabel.heightAnchor.constraint(equalToConstant: 50),
            dateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: defaultPadding),
            dateLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: defaultPadding)
        ])
    }
}

extension TodoHeaderViewController {
    func setDayOfWeekConstraints() {
        dayOfWeekLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dayOfWeekLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: defaultPadding),
            dayOfWeekLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: defaultPadding),
        ])
    }
}

extension TodoHeaderViewController {
    func setChoicePickerConstraints() {
        sortCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sortCollectionView.heightAnchor.constraint(equalToConstant: 30),
            sortCollectionView.widthAnchor.constraint(equalToConstant: 50),
            sortCollectionView.topAnchor.constraint(equalTo: dayOfWeekLabel.bottomAnchor, constant: defaultPadding),
            sortCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -defaultPadding),
            sortCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: defaultPadding),

        ])
    }
}
