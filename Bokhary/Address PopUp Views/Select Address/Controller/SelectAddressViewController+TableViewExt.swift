//
//  SelectAddressViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit
extension SelectAddressViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = addressesTableView.dequeueReusableCell(withIdentifier: selectAddressViewModel.selectAddressTableViewCellID, for: indexPath) as! SelectAddressTableViewCell
        cell.addressDetailsLabelOne.text = "Apartment ( Sanabis )"
        cell.addressDetailsLabelTwo.text = "Block 408,Road No 619, 821, 4, 41"
        cell.mobileNumberLabel.text = "Mobile number +973 8888 7777"
        if selectAddressViewModel.selectedRow == indexPath {
            cell.addressCheckedButton.imageView?.image = UIImage(named:"Checked")
        } else {
            cell.addressCheckedButton.imageView?.image = UIImage(named:"unchecked")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        addressesTableView.deselectRow(at: indexPath, animated: false)
        if selectAddressViewModel.selectedRow == indexPath {
                } else {
                    selectAddressViewModel.selectedRow = indexPath
                }
        addressesTableView.reloadData()
    }
}
