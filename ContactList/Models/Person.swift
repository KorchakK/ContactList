//
//  Person.swift
//  ContactList
//
//  Created by Konstantin Korchak on 23.03.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let personsData = DataManager.shared
        
        let names = personsData.names.shuffled()
        let surnames = personsData.surnames.shuffled()
        let phones = personsData.phoneNumbers.shuffled()
        let emails = personsData.emails.shuffled()
        
        for n in 0...(names.count - 1) {
            persons.append(Person(
                name: names[n],
                surname: surnames[n],
                phoneNumber: phones[n],
                email: emails[n])
            )
        }
        
        return persons
    }
}
