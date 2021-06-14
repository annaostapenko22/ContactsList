//
//  Contact.swift
//  ContactsList
//
//  Created by Anna Ostapenko on 11.06.21.
//

struct Person {
    let firstName: String
    let lastName: String
    let number: String
    let email: String
    let image: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}


extension Person {
    static func getContactList() -> [Person] {
        let dataManager = DataManager()
        let peopleList =  dataManager.generateRandomPeopleList(quantity: 15)
        return peopleList
    }
}

