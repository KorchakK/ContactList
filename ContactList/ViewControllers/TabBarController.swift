//
//  TabBarController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 24.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendData()
    }
    
    private func sendData() {
        guard let vcs = tabBarController?.viewControllers as? [UIViewController] else { return }
        for vc in vcs {
            guard let navVC = vc as? UINavigationController else { return }
            if let mainVC = navVC.topViewController as? MainTableViewController {
                mainVC.persons = persons
            } else if let doubleVC = navVC.topViewController as? DoubleTableViewController {
                doubleVC.persons = persons
            }
        }
    }
    
}
