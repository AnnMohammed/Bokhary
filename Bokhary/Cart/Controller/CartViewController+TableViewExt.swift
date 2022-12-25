//
//  CartViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import UIKit
extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 2:
            switch indexPath.row  {
            case 2:
                return 60
            default:
                return 30
            }
        default:
            return 40
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "SectionHeaderCell") as! SectionHeaderCell
        switch section {
        case 0:
            cell.headerLabel.text = "Additions"
            cell.headerImageView.image = UIImage(named: "Checked")
        case 1:
            cell.headerLabel.text = "Removes"
            cell.headerImageView.image = UIImage(named: "Cancel")
        case 2:
            cell.headerLabel.text = "Payment Summary"
           // cell.headerLabel.frame.origin = CGPoint(x: 25, y: 13)
          //  cell.headerImageView.removeFromSuperview()
        default:
            break
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Additions"
        case 1:
            return "Removes"
        case 2:
            return "Payment Summary"
        default:
            return ""
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(cartViewModel.additions.count)
        switch section {
        case 0:
            return cartViewModel.additions.count
        case 1:
            return cartViewModel.removes.count
        case 2:
            return cartViewModel.paymentSummary.count
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: cartViewModel.carttTableViewCellID, for: indexPath) as! CartTableViewCell
        switch indexPath.section {
        case 0:
            cell.nameLabel.text = cartViewModel.additions[indexPath.row]
            cell.priceLabel.isHidden = true
        case 1:
            cell.nameLabel.text = cartViewModel.removes[indexPath.row]
            cell.priceLabel.isHidden = true
        case 2:
            cell.nameLabel.text = cartViewModel.paymentSummary[indexPath.row]
            cell.priceLabel.text = cartViewModel.prices[indexPath.row]
            if indexPath.row == 2 {
                cell.nameLabel.font = .systemFont(ofSize: 13, weight: .heavy)
                cell.priceLabel.font = .systemFont(ofSize: 13, weight: .heavy)
            }
        default:
            break
        }
        return cell
    }
}
