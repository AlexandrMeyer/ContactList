//
//  SecondContactListViewController.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

import UIKit

class AdvancedContactListViewController: UITableViewController {
    
    var person: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        if cell.tag == 0 {
            var content = cell.defaultContentConfiguration()
            
            content.image = UIImage(systemName: "phone")
            content.text = person[indexPath.row].phoneNumber
            
            cell.contentConfiguration = content
        
        } else {
            var content = cell.defaultContentConfiguration()
            
            content.image = UIImage(systemName: "tray")
            content.text = person[indexPath.row].email
            
            cell.contentConfiguration = content
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
}
