//
//  ContactViewController.swift
//  ContactsList
//
//  Created by Anna Ostapenko on 10.06.21.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var contactImage: UIImageView!
    
    var contact: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactImage.layer.cornerRadius = 115
        fullNameLabel.text = contact?.fullName
        numberLabel.text = contact?.number
        contactImage.image = UIImage(named: contact?.image ?? "cat1")
    } 
}
