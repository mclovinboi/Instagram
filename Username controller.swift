//
//  Username controller.swift
//  LoginScreen
//
//  Created by Abasiama Ibanga on 10/18/19.
//  Copyright © 2019 Abasiama Ibanga. All rights reserved.
//

import Foundation
import UIKit // library in swift that contain all the UI elements

// this new class represents the new screen
class UsernameViewController: UIViewController {


    var username: String?
    let usernameLabel : UILabel = UILabel()

    // an initializer
    init(username: String) {
        self.username = username
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        addUsernameLabel()
         addButton()
    }
    
    func addUsernameLabel() {
        
        if let username = self.username {
            usernameLabel.text = username
        }
        
        view.addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let xConstraint = usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint = usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        xConstraint.isActive = true
        yConstraint.isActive = true
        
    }
    func addButton() {
        
        let navButton = UIButton(type: .system)
        
        navButton.setTitle("Navigate", for: .normal)
        navButton.backgroundColor = .green
        navButton.setTitleColor(.white, for: .normal)
        navButton.layer.cornerRadius = 10
        navButton.addTarget(self, action: #selector(navButtonPressed), for: .touchUpInside)
        
        view.addSubview(navButton)
        navButton.translatesAutoresizingMaskIntoConstraints = false
        
        let xConstraint = navButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let bottomConstraint = navButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        
        xConstraint.isActive = true
        bottomConstraint.isActive = true
        
        
    
    
   }
        
    @objc
    func navButtonPressed() {
        
        self.navigationController?.popViewController(animated: true)
    }
}
