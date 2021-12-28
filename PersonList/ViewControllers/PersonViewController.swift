//
//  PersonViewController.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: PersonsList!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.title
        
        emailLabel.text = "E-mail: \(person.email)"
        phoneLabel.text = "Phone: \(person.phone)"
    }
}
