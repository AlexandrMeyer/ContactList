//
//  TabBarViewController.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
        if let controllersArray = viewControllers {
            for viewController in controllersArray {
                if let contactLisrVC = viewController as? ContactListViewController {
                    contactLisrVC.persons = persons
                } else if let advancedVC = viewController as? AdvancedContactListViewController {
                    advancedVC.persons = persons
                }
            }
        }
    }
}
