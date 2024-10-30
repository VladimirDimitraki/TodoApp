//
//  TodoChoiceCollectionViewCell.swift
//  Todo
//
//  Created by Melania Dababi on 10/24/24.
//

import UIKit

class TodoSortCollectionViewCell: UICollectionViewCell {
    private var textLabel = UILabel()
    private var numberLabel = Circle()
    
    var sortLabelText: String? {
        get {
            return textLabel.text
        }
        set {
            textLabel.text = newValue
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
//    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//
//    }
    
    private func configure() {
        backgroundColor = .blue
        textLabel.backgroundColor = .red
        addSubview(textLabel)
        addSubview(numberLabel)
        
        setLabelConstraints()
        setCircleConstraints()
    }
    
    private func setLabelConstraints() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
    
    private func setCircleConstraints() {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberLabel.widthAnchor.constraint(equalToConstant: 25),
            numberLabel.heightAnchor.constraint(equalToConstant: 20),
            //            numberLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            //            numberLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            //            numberLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            numberLabel.leadingAnchor.constraint(equalTo: textLabel.trailingAnchor, constant: 5)
        ])
    }
}

class Circle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = CGFloat(10)
        backgroundColor = .yellow
    }
}
