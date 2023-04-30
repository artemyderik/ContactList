//
//  PersonListsTabBarController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let persons = Person.getPersonsInCount(of: 9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPersons()
    }
    
    private func setPersons() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let firstNC = viewController as? FirstNavigationController {
                firstNC.persons = persons
            } else if let secondNC = viewController as? SecondNavigationController {
                secondNC.persons = persons
            }
        }
    }
}
