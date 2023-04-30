//
//  FirstNavigationController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class FirstNavigationController: UINavigationController {
    
    var persons = Person.getPersonsInCount(of: 9)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let firstVC = segue.destination as? PersonListFirstViewController else { return }
        firstVC.persons = persons
    }
}
