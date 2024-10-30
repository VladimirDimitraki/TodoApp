//
//  TodoCellTitleView.swift
//  Todo
//
//  Created by Melania Dababi on 10/15/24.
//

import UIKit

class TitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        font = UIFont.boldSystemFont(ofSize: 20)
        textColor = .black
    }
}


