//
//  LoginController.swift
//  PaymentsApp
//
//  Created by Awais Khalid on 13/07/2020.
//  Copyright © 2020 Awais Khalid. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    let userNameTF: ParentTextField = {
        let tf = ParentTextField()
        tf.properties = ParentTextField.PlaceholderProperties(text: "Username", color: .azure)
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    let passwordTF: ParentTextField = {
        let tf = ParentTextField()
        tf.properties = ParentTextField.PlaceholderProperties(text: "Password", color: .azure)
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    let loginButton: ParentButton = {
        let button = ParentButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.cerulean
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
     
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteTwo
        // Do any additional setup after loading the view.
        setupViews()
        test()
    }
    func setupViews(){
        view.addSubview(userNameTF)
        view.addSubview(passwordTF)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            //Constraints to usernameTF
            userNameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            userNameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            userNameTF.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            userNameTF.heightAnchor.constraint(equalToConstant: 50),
            
            //Constraints to passwordTF
            passwordTF.leadingAnchor.constraint(equalTo: userNameTF.leadingAnchor),
            passwordTF.trailingAnchor.constraint(equalTo: userNameTF.trailingAnchor),
            passwordTF.topAnchor.constraint(equalTo: userNameTF.bottomAnchor, constant: 10),
            passwordTF.heightAnchor.constraint(equalToConstant: 50),
            
            //Constraints to loginButton
            loginButton.leadingAnchor.constraint(equalTo: userNameTF.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: userNameTF.trailingAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 10),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func test(){
        print("abcsd".encrypt())
    }
}
