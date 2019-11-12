//
//  ViewController.swift
//  LoginScreen
//
//  Created by Abasiama Ibanga on 10/11/19.
//  Copyright © 2019 Abasiama Ibanga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let Button = UIButton(type: .system)
    let UsernameField = UITextField()
    let PasswordField = UITextField()
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addImage()
        
        addUserNameField()
        addPasswordField()
        addButton()
        
        

    
        
    }
    
    func addImage() {
       
        var myImage = UIImage(named: "instagram-logo.png")
        var myImageView = UIImageView(image: myImage)
        
        view.addSubview(myImageView)
        myImageView.contentMode = .scaleAspectFit
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        var centerX = myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        // center myLabel on the yaxis and center on parent view
        var centerY = myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150)
        var widthconstraint = myImageView.widthAnchor.constraint(equalToConstant: 200)
        
        // activates constraints that were made
        widthconstraint.isActive = true
        centerX.isActive = true
        centerY.isActive = true
        
    }
    
    func addUserNameField() {
        
        //create text field
        
        // set the properties
        UsernameField.textAlignment = .center
        UsernameField.placeholder = "Username"
        
        // add to view
        view.addSubview(UsernameField)
        
        // add special line
        UsernameField.translatesAutoresizingMaskIntoConstraints = false
        
        // add constraints
        let centerX = UsernameField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let centerY = UsernameField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30)
        
        // add width contraint woth constants
        let rightConstraint = UsernameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50)
        let leftConstraint = UsernameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50)
        
        // activate constraints
        centerX.isActive = true
        centerY.isActive = true
        rightConstraint.isActive = true
        leftConstraint.isActive = true
        
    }
    
    func addPasswordField() {
        
        
        // set the properties
        PasswordField.textAlignment = .center
        PasswordField.placeholder = "Password"
        PasswordField.isSecureTextEntry = true
        
        view.addSubview(PasswordField)
        PasswordField.translatesAutoresizingMaskIntoConstraints = false
        
        let centerX = PasswordField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let centerY = PasswordField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30)
        
        let rightConstraint = PasswordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50)
        let leftConstraint = PasswordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50)
        
        centerX.isActive = true
        centerY.isActive = true
        rightConstraint.isActive = true
        leftConstraint.isActive = true
    }
    
    func addButton() {
        
        
        Button.setTitle("Log In" , for: .normal)
        Button.backgroundColor = UIColor(displayP3Red: 92/255, green: 175/255, blue: 216/255, alpha: 1)
        Button.setTitleColor(.white, for: .normal)
        Button.layer.cornerRadius = 20
        Button.titleLabel?.font = UIFont(name: "Avenir-bold", size: 20)
        Button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
       
        
        view.addSubview(Button)
        Button.translatesAutoresizingMaskIntoConstraints = false
        
        let centerX = Button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let bottomConstraint = Button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        
        let widthConstraint = Button.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = Button.heightAnchor.constraint(equalToConstant:40)
        
        centerX.isActive = true
        bottomConstraint.isActive = true
        widthConstraint.isActive = true
        heightConstraint.isActive = true
        
        
    }
    @objc
    func loginButtonPressed() {
        print("ButtonPressed")
     //  conditon for null field
        if let username = (UsernameField.text) ,
            let password = PasswordField.text {
             
        // condition for is the feild is empty
            if(!username.isEmpty && !password.isEmpty){
                print(username)
                
                let feedViewController = FeedViewController()
                self.navigationController?.pushViewController(FeedViewController(), animated: true)
            }else{
                print("not entered")
            }
            
            
            
        }
    }
    


}

