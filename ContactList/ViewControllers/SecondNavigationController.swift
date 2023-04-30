//
//  SecondNavigationController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class SecondNavigationController: UINavigationController {
    
    var persons = Person.getPersonsInCount(of: 9)

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? PersonListSecondViewController else { return }
        secondVC.persons = persons
    }
}
