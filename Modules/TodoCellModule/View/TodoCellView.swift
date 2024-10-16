//
//  TodoCellViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/14/24.
//

import UIKit

class TodoCellView: UITableViewCell {
    var titleLabel = TitleLabel()
    var descriptionLabel = DescriptionLabel()
    
    let separator = UIView()
    
    var createdData = UILabel()
    var isComleted = UIButton()
    
    let padding: CGFloat = 15
    let separatorPadding: CGFloat = 20
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        separator.backgroundColor = Colors.lightGrayColor
        
        contentView.addSubview(separator)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstrains() {
        separator.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        setSeparatorConstrains()
        setTitleLableConstrains()
        setDescriptionLabelConstrains()
    }
}

extension TodoCellView {
    private func setSeparatorConstrains() {
        NSLayoutConstraint.activate([
            separator.heightAnchor.constraint(equalToConstant: 1),
            separator.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: padding),
            separator.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: separatorPadding),
            separator.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -separatorPadding),
            separator.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25)
        ])
    }
}

extension TodoCellView {
    private func setTitleLableConstrains() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25)
        ])
    }
}

extension TodoCellView {
    private func setDescriptionLabelConstrains() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: padding),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            descriptionLabel.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor)
        ])
    }
}

