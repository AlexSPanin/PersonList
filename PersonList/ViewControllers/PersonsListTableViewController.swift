//
//  PersonsListTableViewController.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    private let personsList = Persons.getPersonsList()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.title
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let person = personsList[indexPath.row]
        personVC.person = person
    }
}
