//
//  PersonList.swift
//  ContactList
//
//  Created by Артемий Дериглазов on 20.04.2023.
//

import UIKit

class PersonListFirstViewController: UITableViewController {
    
    var persons = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoAboutVC = segue.destination as? InfoAboutOnePersonViewController else { return }
        
        infoAboutVC.person = sender as? Person
    }
}
