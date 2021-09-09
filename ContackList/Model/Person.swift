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
    
    static func randomPerson() -> Person {
        Person(
            firstName: DataManager.shared.firstNames.randomElement() ?? "",
            lastName: DataManager.shared.lastNames.randomElement() ?? "",
            phoneNumber: DataManager.shared.phoneNumbers.randomElement() ?? "",
            email: DataManager.shared.email.randomElement() ?? ""
        )
    }
}


