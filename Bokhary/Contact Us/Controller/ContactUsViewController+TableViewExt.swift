//
//  ContactUsViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit
extension ContactUsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactUsViewModel.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ContactUsTableView.dequeueReusableCell(withIdentifier: contactUsViewModel.contactUsTableViewCellID, for: indexPath) as! ContactUsTableViewCell
        cell.contactNameLabel.text = contactUsViewModel.contacts[indexPath.row]
        cell.contactImageView.image = UIImage(named:  contactUsViewModel.contactsIconsNames[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            break  // Call Number
        case 1:
            break  // Open Email
        case 2:
            break  // Open website
        case 3:
            break  // Open Location
        case 4:
            break  // Open facebook
        case 5:
            break  // Open twitter
        case 6:
            break  // Open whatsapp
        case 7:
            break  // Open snapchat
        case 8:
            break  // Open instagram
        default:
            break
        }
    }
    
}
