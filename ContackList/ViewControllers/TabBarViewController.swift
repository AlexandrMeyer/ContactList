//
//  TabBarViewController.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

import UIKit

class TabBarViewController: UITabBarController {

    let person = [Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson(), Person.randomPerson()]
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }

        for viewController in viewControllers {
            guard let navigavionVC = viewController as? UINavigationController else { return }
                  if let firstVC = navigavionVC.topViewController as? ContactListViewController {
                      firstVC.person = person
                  } else if let secondVC = navigavionVC.topViewController as? AdvancedContactListViewController {
                      secondVC.person = person
            }
        }
    }
}
