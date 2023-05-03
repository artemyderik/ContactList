//
//  FirstNavigationController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class FirstNavigationController: UINavigationController {
    
    var persons = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPersons()
    }
    
    private func setPersons() {
        guard let firstVC = topViewController as? PersonListFirstViewController else { return }
        firstVC.persons = persons
    }
}
