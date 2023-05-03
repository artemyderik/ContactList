//
//  SecondNavigationController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class SecondNavigationController: UINavigationController {
    
    var persons = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setPersons()
    }
    
    private func setPersons() {
        guard let secondVC = topViewController as? PersonListSecondViewController else { return }
        secondVC.persons = persons
    }
}
