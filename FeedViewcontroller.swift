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
class FeedViewController: UIViewController, UITableViewDataSource {
    
    
    var tableView: UITableView = UITableView()
    
    var names: [[String]] = [
        ["Abasiama", "Adam", "Anderson", "Amanda", "Ariel"],
        ["Bianca", "Brian", "Bonnie", "Ben", "Bono"]
    ]
    
    var sectionTitles: [String] = ["A", "B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
    }
    
    func setUpTableView() {
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint = tableView.topAnchor.constraint(equalTo: view.topAnchor)
        let bottomAConstraint = tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        let rightConstraint = tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        let leftConstraint = tableView.leftAnchor.constraint(equalTo: view.leftAnchor)
        
        topConstraint.isActive = true
        bottomAConstraint.isActive = true
        rightConstraint.isActive = true
        leftConstraint.isActive = true
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "animalCell")
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = UITableViewCell()
        var cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        
        return cell
    }
       
    
    
}
