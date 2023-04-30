//
//  Person.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 20.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String

    var fullName: String {
        name + " " + surname
    }
    
    static func getPersonsInCount(of int: Int) -> [Person] {
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let phones = DataStore().phones.shuffled()
        let emails = DataStore().emails.shuffled()
        
        var persons = [Person]()
        for number in 1..<int {
            let person = Person(
                name: names[number],
                surname: surnames[number],
                phone: phones[number],
                email: emails[number]
            )
            persons.append(person)
        }
        return persons
    }
}






