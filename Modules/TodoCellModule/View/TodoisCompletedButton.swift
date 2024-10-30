//
//  TodoisCompletedButton.swift
//  Todo
//
//  Created by Melania Dababi on 10/21/24.
//

import UIKit

class CompletedButton: UIButton {
    var isHold = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func setDefoult() {
        layer.borderColor = Colors.cgDurkGrayColor
        backgroundColor = .clear
        layer.borderWidth = CGFloat(1)
        layer.cornerRadius = 15
    }
    
    private func configure() {
        setDefoult()
        addTarget(self, action: #selector(actionConfigure), for: .touchUpInside)
    }
    
    @objc private func actionConfigure() {
        isHold.toggle()
        guard isHold else {
            setDefoult()
            return
        }
        
        layer.borderColor = Colors.cgClearColor
        backgroundColor = Colors.blueButtonColor
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 15, weight: .regular)
        let completedIcon = UIImage(systemName: "checkmark", withConfiguration: symbolConfiguration)
        tintColor = .white
        setImage(completedIcon, for: .normal)
    }
}
