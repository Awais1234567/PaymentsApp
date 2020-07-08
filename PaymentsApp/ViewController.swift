//
//  ViewController.swift
//  PaymentsApp
//
//  Created by Awais Khalid on 08/07/2020.
//  Copyright © 2020 Awais Khalid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "Welcome to Devops\nthis is the initial build to setup CI/CD"
        label.textAlignment = .center
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    let image: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "live_streaming")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        setupViews()
    }
    func setupViews(){
        view.addSubview(label)
        view.addSubview(image)
        
        NSLayoutConstraint.activate([
            image.bottomAnchor.constraint(equalTo: label.topAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 50),
            image.heightAnchor.constraint(equalToConstant: 50),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

