//
//  TodoCellDescriptionView.swift
//  Todo
//
//  Created by Melania Dababi on 10/15/24.
//

import UIKit

class DescriptionLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        font = UIFont.boldSystemFont(ofSize: 13)
        textColor = Colors.descriptionColorGray
    }
}
