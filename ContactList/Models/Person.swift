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
        let personsData = DataManager()
        
        personsData.names.shuffle()
        personsData.surnames.shuffle()
        personsData.phoneNumbers.shuffle()
        personsData.emails.shuffle()
        
        while !personsData.names.isEmpty {
            persons.append(Person(
                name: personsData.names.removeFirst(),
                surname: personsData.surnames.removeFirst(),
                phoneNumber: personsData.phoneNumbers.removeFirst(),
                email: personsData.emails.removeFirst()
            )
            )
        }
        return persons
    }
}
