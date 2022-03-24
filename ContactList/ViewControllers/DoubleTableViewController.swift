//
//  DoubleTableViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 23.03.2022.
//

import UIKit

class DoubleTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return "\(person.name) \(person.surname)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doubleView", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = "Phone: \(person.phoneNumber)"
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = "Email: \(person.email)"
            content.image = UIImage(systemName: "mail.stack")
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
