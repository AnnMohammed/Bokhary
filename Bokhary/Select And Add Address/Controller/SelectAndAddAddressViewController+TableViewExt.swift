//
//  SelectAndAddAddressViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 27/12/2022.
//

import UIKit
extension SelectAndAddAddressViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectAndAddAddressViewModel.addresses
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = addressesTableView.dequeueReusableCell(withIdentifier: selectAndAddAddressViewModel.selectAddressTableViewCellID, for: indexPath) as! SelectAddressTableViewCell
        cell.addressDetailsLabelOne.text = "Apartment ( Sanabis )"
        cell.addressDetailsLabelTwo.text = "Block 408,Road No 619, 821, 4, 41"
        cell.mobileNumberLabel.text = "Mobile number +973 8888 7777"
        if selectAndAddAddressViewModel.selectedRow == indexPath {
            cell.addressCheckedButton.imageView?.image = UIImage(named:"Checked")
        } else {
            cell.addressCheckedButton.imageView?.image = UIImage(named:"unchecked")
        }

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        addressesTableView.deselectRow(at: indexPath, animated: false)
        if selectAndAddAddressViewModel.selectedRow == indexPath {
                } else {
                    selectAndAddAddressViewModel.selectedRow = indexPath
                }
        addressesTableView.reloadData()
    }
}
