//
//  MainTableViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 23.03.2022.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "detailInfo", sender: person)
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailContactViewController else { return }
        detailVC.person = sender as? Person
    }
}
