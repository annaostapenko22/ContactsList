//
//  File.swift
//  ContactsList
//
//  Created by Anna Ostapenko on 14.06.21.
//

import Foundation

class DataManager {
    
    private var firstNames = ["Camellia",
                              "Norberto",
                              "Lanell",
                              "Wilhelmina",
                              "Ivana",
                              "Sammie",
                              "Lonny",
                              "Bonnie",
                              "Laci",
                              "Carline",
                              "Malik",
                              "Valentin",
                              "Agathe",
                              "Viola",
                              "Tobias",
                              "Rafael",
                              "Virginia"]
    
    private var lastNames = ["Vanauken",
                             "Glorioso",
                             "Hoehn",
                             "Wohlford",
                             "Kimber",
                             "Simons",
                             "Roberge",
                             "Hackett",
                             "Weirich",
                             "Shute",
                             "Derrick",
                             "Hildebrand",
                             "Tabea",
                             "Edgar",
                             "Meinrad",
                             "Cornish"]
    
    private var emails = ["mschilli@optonline.net",
                          "wildixon@sbcglobal.net",
                          "crowl@gmail.com",
                          "jfmulder@gmail.com",
                          "research@mac.com",
                          "lukka@yahoo.com",
                          "epeeist@outlook.com",
                          "iapetus@me.com",
                          "euice@optonline.net",
                          "helger@me.com",
                          "mschilli23@optonline.net",
                          "wildixofdsn@sbcglobal.net",
                          "crovvvwl@gmail.com",
                          "jfm44ulder@gmail.com",
                          "reseddarch@mac.com",
                          "lukkffa@yahoo.com",
                          "epeeis66t@outlook.com",
                          "22iapetus@me.com",
                          "euiceee@optonline.net",
                          "hel7ger@me.com"]
    
    private var numbers = ["717-257-9093",
                           "916-486-1907",
                           "646-292-8027",
                           "915-755-0358",
                           "740-523-7417",
                           "732-773-4214",
                           "623-533-0763",
                           "612-214-9392",
                           "210-212-6546",
                           "940-525-9511",
                           "757-257-9093",
                           "910-486-1907",
                           "646-222-8027",
                           "915-455-0358",
                           "740-523-7417",
                           "712-773-4214",
                           "623-533-0663",
                           "332-214-9392",
                           "210-112-6546",
                           "670-525-9511"]
    
    private var images = ["cat1",
                          "cat2",
                          "cat3",
                          "cat4",
                          "cat6",
                          "cat7",
                          "cat8",
                          "cat9",
                          "cat10",
                          "cat11"]
    
    func generateRandomPeopleList(quantity: Int) -> [Person] {
        var peopleList = [Person]()
        for _ in 1...quantity {
            if let firstName = firstNames.randomElement(),
               let lastName = lastNames.randomElement(),
               let email = emails.randomElement(),
               let number = numbers.randomElement(),
               let image = images.randomElement() {
                firstNames = firstNames.filter(){$0 != firstName}
                lastNames = lastNames.filter(){$0 != lastName}
                emails = emails.filter(){$0 != email}
                numbers = numbers.filter(){$0 != number}
                let person = Person(firstName: firstName, lastName: lastName, number: number, email: email, image: image)
                peopleList.append(person)
            }
        }
        
        return peopleList
    }
}

