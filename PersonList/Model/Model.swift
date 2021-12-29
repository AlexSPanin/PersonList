//
//  Model.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import Foundation

struct Persons {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var title: String {
        ("\(name) \(surname)")
    }
}

extension Persons {
    static func getPersonsList() -> [Persons] {
        
        var persons:[Persons] = []
        let personsDataManager = importDataManager.getImportDataManager()
        
        let minCount = min(
            personsDataManager.names.count,
            personsDataManager.surnames.count,
            personsDataManager.emails.count,
            personsDataManager.phones.count
        )
        
        for index in 0..<minCount {
            persons.append(
                Persons(
                    name: personsDataManager.names[index],
                    surname: personsDataManager.surnames[index],
                    email: personsDataManager.emails[index],
                    phone: personsDataManager.phones[index]
                )
            )
        }
        return persons
    }
}

struct importData {
    
    static func getImportData(for sender:[String]) -> [String] {
        
        var inData: Set<String> = []
        var outData: [String] = []
        
        sender.forEach {
            string in
            inData.insert(string)
        }
        
        var sortedData = inData.sorted()
        
        while sortedData.count != 0 {
            let randomIndex = Int.random(in: 0..<sortedData.count)
            outData.append(sortedData[randomIndex])
            sortedData.remove(at: randomIndex)
        }
        return outData
    }
}

struct importDataManager {
    var names: [String]
    var surnames: [String]
    var emails: [String]
    var phones: [String]
    
    static func getImportDataManager () -> importDataManager {
        importDataManager(
            names: importData.getImportData(for: DataManager.shared.names),
            surnames: importData.getImportData(for: DataManager.shared.surnames),
            emails: importData.getImportData(for: DataManager.shared.emails),
            phones: importData.getImportData(for: DataManager.shared.phones)
        )
    }
}

