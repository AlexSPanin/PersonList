//
//  DataManager.swift
//  PersonList
//
//  Created by Александр Панин on 28.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaaron", "Tim",
        "Ted", "Steven", "Ivan",
        "Alex", "Nicola", "Maria",
        "Anna"
    ]
    
    let surnames = [
        "Smith", "Dow", "Tramp",
        "Obama","Black", "Andersson",
        "Gilmor", "Murphy", "Tolstoy",
        "Popov"
    ]
    
    let emails = [
        "aaa@ya.ru", "bbb@ya.ru", "ccc@ya.ru",
        "ddd@ya.ru", "eee@ya.ru", "fff@ya.ru",
        "ttt@ya.ru", "sss@ya.ru", "rrr@ya.ru",
        "uuu@ya.ru"
    ]
    
    let phones = [
        "134579874", "245893146", "321856841",
        "421387690", "532097789", "612309877",
        "744526531", "863521709", "912346237",
        "037321881"
    ]
    
    private init() {}
}
