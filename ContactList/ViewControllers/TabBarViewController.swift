//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 26.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        controllersSetup()
    }
 
    private func controllersSetup() {
        guard let mainVC = viewControllers?.first as? MainTableViewController else { return }
        guard let doubleVC = viewControllers?.last as? DoubleTableViewController else { return }
        
        let persons = Person.getPersons()
        mainVC.persons = persons
        doubleVC.persons = persons
    }
}
