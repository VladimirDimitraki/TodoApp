//
//  TodoAlertViewController.swift
//  Todo
//
//  Created by Melania Dababi on 10/19/24.
//

import UIKit

//protocol

class TodoAlertViewController: UIViewController {
    var alertView: UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showCuustomAlert() {
        alertView = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        let coustomView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 500))
    }
}
