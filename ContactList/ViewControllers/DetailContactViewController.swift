//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 23.03.2022.
//

import UIKit

class DetailContactViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.name) \(person.surname)"
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone number: \(person.phoneNumber)"
    }
}
