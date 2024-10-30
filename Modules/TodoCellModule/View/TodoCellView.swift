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
    var dayLabel = DayLabel()
    var isComleted = CompletedButton()
    
    let paddingInsideCornerCell: CGFloat = 20
    let paddingInsideCell: CGFloat = 10
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        separator.backgroundColor = Colors.lightGrayColor
        
        contentView.addSubview(separator)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(dayLabel)
        contentView.addSubview(isComleted)
        
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstrains() {
        separator.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        isComleted.translatesAutoresizingMaskIntoConstraints = false
        
        setSeparatorConstrains()
        setTitleLableConstrains()
        setDescriptionLabelConstrains()
        setDateLabelConstrains()
        setisCompletedButtonConstrains()
    }
}

extension TodoCellView {
    private func setSeparatorConstrains() {
        NSLayoutConstraint.activate([
            separator.heightAnchor.constraint(equalToConstant: 1.5),
            separator.topAnchor.constraint(equalTo: contentView.centerYAnchor, constant: paddingInsideCell),
            separator.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: paddingInsideCornerCell),
            separator.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddingInsideCornerCell)
        ])
    }
}

extension TodoCellView {
    private func setTitleLableConstrains() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: paddingInsideCornerCell),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: paddingInsideCornerCell),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddingInsideCornerCell)
        ])
    }
}

extension TodoCellView {
    private func setDescriptionLabelConstrains() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: paddingInsideCornerCell),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddingInsideCornerCell),
        ])
    }
}

extension TodoCellView {
    private func setDateLabelConstrains() {
        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(equalTo: separator.bottomAnchor, constant: 15),
            dayLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: paddingInsideCornerCell),
            dayLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddingInsideCornerCell),
            dayLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -paddingInsideCornerCell)
        ])
    }
}

extension TodoCellView {
    private func setisCompletedButtonConstrains() {
        NSLayoutConstraint.activate([
            isComleted.widthAnchor.constraint(equalToConstant: 30),
            isComleted.heightAnchor.constraint(equalToConstant: 30),
            isComleted.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddingInsideCornerCell),
            isComleted.topAnchor.constraint(equalTo: contentView.topAnchor, constant: paddingInsideCornerCell)
        ])
    }
}
