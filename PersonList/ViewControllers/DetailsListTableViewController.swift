//
//  DetailsListTableViewController.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import UIKit

class DetailsListTableViewController: UITableViewController {
    
    private let personsList = Persons.getPersonsList()
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].title
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personDetails", for: indexPath)
        
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}

