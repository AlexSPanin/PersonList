//
//  Model.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import Foundation

struct PersonsList {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var title: String {
        ("\(name) \(surname)")
    }
}

extension PersonsList {
    static func getPersonsList() -> [PersonsList] {
        var personsList: [PersonsList] = []
        let person = DataManager.shared
        
        for index in 0...9 {
            print (index)
            personsList.append(
                PersonsList (
                    name: person.names[index],
                    surname: person.surnames[index],
                    email: person.emails[index],
                    phone: person.phones[index]
                )
            )
        }
        return personsList
    }
}

