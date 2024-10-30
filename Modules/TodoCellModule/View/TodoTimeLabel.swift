//
//  TodoTimeLable.swift
//  Todo
//
//  Created by Melania Dababi on 10/19/24.
//

import UIKit

class TimeLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        font = UIFont.boldSystemFont(ofSize: 14)
        textColor = Colors.lightGrayColor3
    }
}
