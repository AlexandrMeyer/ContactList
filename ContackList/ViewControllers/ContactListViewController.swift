//
//  ContactListViewController.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var person: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
//        let persons = person[indexPath.row]
        content.text = person[indexPath.row].firstName
        content.secondaryText = person[indexPath.row].lastName
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC.person = person[indexPath.row]
    }
}
