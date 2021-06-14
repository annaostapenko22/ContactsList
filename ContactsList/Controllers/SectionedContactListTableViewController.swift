//
//  ViewController.swift
//  ContactsList
//
//  Created by Anna Ostapenko on 08.06.21.
//

import UIKit

class SectionedContactListTableViewController: UITableViewController {
    private let contactList = Person.getContactList()
}

extension SectionedContactListTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.section]
        
        if(indexPath.row == 0) {
            content.text = contact.email
        } else {
            content.text = contact.number
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
