//
//  CheckOutViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//
import UIKit
extension CheckOutViewController: UITableViewDelegate, UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let titleView = view as! UITableViewHeaderFooterView
       // titleView.textLabel?.text = titleView.textLabel?.text?.localizedCapitalized
        titleView.textLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        titleView.textLabel?.textColor = UIColor.black
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200
        case 1:
            return 170
        case 2:
            return 150
        case 3:
            if indexPath.row == 3 {
                return 65
            }
            return 25
        case 4:
            return 50
        default:
           return 30
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Item Details"
        case 1:
            return ""
        case 2:
            return "Pay With"
        case 3:
            return "Payment Summary"
        default:
           return ""
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return checkOutViewModel.itemsCount
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            return checkOutViewModel.paymentSummaryCount
        case 4:
            return 1
        default:
           return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemDetailsCell = checkOutTableView.dequeueReusableCell(withIdentifier: checkOutViewModel.itemTableViewCellID) as! ItemTableViewCell
        let addressDetailsCell = checkOutTableView.dequeueReusableCell(withIdentifier: checkOutViewModel.addressDetailsTableViewCellID) as! AddressDetailsTableViewCell
        let paymentMethodsCell = checkOutTableView.dequeueReusableCell(withIdentifier: checkOutViewModel.paymentMethodsTableViewCellID) as! PaymentMethodsTableViewCell
        let paymentDetailsCell = checkOutTableView.dequeueReusableCell(withIdentifier: cartViewModel.carttTableViewCellID) as! CartTableViewCell
        let placeOrderButtonCell = checkOutTableView.dequeueReusableCell(withIdentifier: checkOutViewModel.placeOrderButtonTableViewCellID) as! PlaceOrderButtonTableViewCell
        switch indexPath.section {
        case 0:
            return  itemDetailsCell
        case 1:
            return  addressDetailsCell
        case 2:
            return  paymentMethodsCell
        case 3:
            paymentDetailsCell.nameLabel.text = checkOutViewModel.paymentSummary[indexPath.row]
            paymentDetailsCell.priceLabel.text = checkOutViewModel.prices[indexPath.row]
            paymentDetailsCell.nameLabel.font = .systemFont(ofSize: 13, weight: .light)
            paymentDetailsCell.priceLabel.font = .systemFont(ofSize: 13, weight: .light)
            if indexPath.row == 3 {
                paymentDetailsCell.nameLabel.font = .systemFont(ofSize: 13, weight: .heavy)
                paymentDetailsCell.priceLabel.font = .systemFont(ofSize: 13, weight: .heavy)
            }
            return  paymentDetailsCell
        case 4:
            return placeOrderButtonCell
        default:
           return  paymentDetailsCell
        }

    }
    
    
}
