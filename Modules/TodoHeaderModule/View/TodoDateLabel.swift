//
//  TodoHeaderDataView.swift
//  Todo
//
//  Created by Melania Dababi on 10/22/24.
//

import UIKit

class TodoHeadLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        font = UIFont.boldSystemFont(ofSize: 30)
        textColor = .black
        text = "Today's Task"
        backgroundColor = .brown
    }
}

class TodoHeadLabelDayOfWeek: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        backgroundColor = .magenta
        font = UIFont.boldSystemFont(ofSize: 15)
        textColor = Colors.lightGrayColor
        text = """
                \(StaticTimeComponents.shared.dayOfWeek), \(StaticTimeComponents.shared.day) \(StaticTimeComponents.shared.month)
               """
        withUnsafePointer(to: StaticTimeComponents.shared) { pointer in
        print("Address of myObject 1: \(pointer)")
        }
       
        withUnsafePointer(to: StaticTimeComponents.shared) { pointer in
            print("Address of myObject 2: \(pointer)")
        }
    }
}
