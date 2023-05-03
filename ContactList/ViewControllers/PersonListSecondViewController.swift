//
//  PersonListMoreInfoViewController.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 25.04.2023.
//

import UIKit

class PersonListSecondViewController: UITableViewController {
    
    var persons = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        [persons.first?.email, persons.last?.phone].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personNameSecond", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        cell.selectionStyle = .none
        cell.contentConfiguration = content
        return cell
    }
}

