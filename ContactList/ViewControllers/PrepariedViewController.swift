//
//  PrepariedViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 24.03.2022.
//

import UIKit

class PrepariedViewController: UIViewController {
    
    private let persons = Person.getPersons()

    override func viewDidAppear(_ animated:Bool) {
        performSegue(withIdentifier: "preparied", sender: nil)
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            guard let navVC = viewController as? UINavigationController else { return }
            if let mainVC = navVC.topViewController as? MainTableViewController {
                mainVC.persons = persons
            } else if let doubleVC = navVC.topViewController as? DoubleTableViewController {
                doubleVC.persons = persons
            }
        }
    }
}
