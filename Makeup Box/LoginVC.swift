//
//  LoginVC.swift
//  Makeup Box
//
//  Created by Alan Chu on 5/15/20.
//  Copyright © 2020 Alan Chu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var textFieldsView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: <#T##Selector#>, name: UIResponder.keyboardWillShowNotification, object: nil)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure_textFieldView()
        configure_loginButton()
    }
    
    
    func configure_textFieldView() {
        let border = CALayer()
        let width = CGFloat(2)
        let color = UIColor.systemGroupedBackground.cgColor
        border.borderColor = color
        border.frame = CGRect(x: 0, y: 0, width: textFieldsView.frame.width , height: textFieldsView.frame.height)
        border.borderWidth = width
        
        let line = CALayer()
        line.borderColor = color
        line.borderWidth = width
        line.frame = CGRect(x: 0, y: textFieldsView.frame.height / 2 - width, width: textFieldsView.frame.width, height: width)
        
        textFieldsView.layer.addSublayer(border)
        textFieldsView.layer.addSublayer(line)
        textFieldsView.layer.cornerRadius = 5
        textFieldsView.layer.masksToBounds = true
    }
    
    func configure_loginButton() {
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        loginButton.isEnabled = false
    }


}
