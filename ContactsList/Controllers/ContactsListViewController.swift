//
//  ContactsListViewController.swift
//  ContactsList
//
//  Created by Anna Ostapenko on 10.06.21.
//

import UIKit

class ContactsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 70
        
    }
    
    
}

extension ContactsListViewController: UITableViewDelegate {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailVC = segue.destination as? ContactDetailViewController
              else {return}
        guard let contact = sender as? Person else { return }
     
        contactDetailVC.contact = contact
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = contactList[indexPath.row]
        
        performSegue(withIdentifier: "showContactDetails", sender: contact)
        
    }
    
}

extension ContactsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        content.secondaryText = contact.number
        content.image = UIImage(named: contact.image)
        content.imageProperties.maximumSize = CGSize(width: 70, height: 70)

        cell.contentConfiguration = content

        return cell
    }
    
    
}
