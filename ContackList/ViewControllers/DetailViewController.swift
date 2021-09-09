//
//  DetailViewController.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
