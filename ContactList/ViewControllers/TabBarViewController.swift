//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Konstantin Korchak on 24.03.2022.
//

import UIKit

class TabBarViewController {
    
    private let persons = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.delegate = self
        settingVC.mainScreenColor = view.backgroundColor
    }
    
}
