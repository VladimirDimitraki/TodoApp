//
//  TodoPickerView.swift
//  Todo
//
//  Created by Melania Dababi on 10/22/24.
//

import UIKit

class TodoSortCollectionView: UICollectionView {
    var cell = TodoSortCollectionViewCell()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setUpLayout()
        self.register(TodoSortCollectionViewCell.self, forCellWithReuseIdentifier: "SortCell")
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLayout() {
        if let layout = self.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }
}

extension TodoSortCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: "SortCell", for: indexPath) as? TodoSortCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let textArray = Array(TodoSortComponents.components.keys)
        
        cell.sortLabelText = textArray[indexPath.item]
        
        return cell
    }
    
    override func numberOfItems(inSection section: Int) -> Int {
        return TodoSortComponents.components.count
    }
}

extension TodoSortCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    
}
