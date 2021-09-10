//
//  ModelData.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.firstNames.shuffled()
        let surnume = DataManager.shared.lastNames.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        let email = DataManager.shared.email.shuffled()
        
        let iterationCount = min(names.count, surnume.count, phones.count, email.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: names[index],
                lastName: surnume[index],
                phoneNumber: phones[index],
                email: email[index]
            )
            persons.append(person)
        }
        return persons
    }
}


