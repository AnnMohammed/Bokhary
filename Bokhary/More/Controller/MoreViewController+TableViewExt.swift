//
//  MoreViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit
extension MoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeaderCell = moreTableView.dequeueReusableCell(withIdentifier: moreViewModel.moreSectionHeaderCellID) as! MoreSectionHeaderCell
        switch section {
        case 0:
            sectionHeaderCell.moreSectionHeaderNameLabel.text = "Home"
            sectionHeaderCell.moreSectionHeaderImageView.image = UIImage(named: "Home")
            sectionHeaderCell.moreSectionHeaderButtonOutlet.addTarget(self, action: #selector(homeSectionButtonTapped), for: .touchUpInside)
        case 1:
            sectionHeaderCell.moreSectionHeaderNameLabel.text = "Menu"
            sectionHeaderCell.moreSectionHeaderImageView.image = UIImage(named: "Menu")
            sectionHeaderCell.moreSectionHeaderButtonOutlet.addTarget(self, action: #selector(menuSectionButtonTapped), for: .touchUpInside)
        case 2:
            sectionHeaderCell.moreSectionHeaderNameLabel.text = "My Account"
            sectionHeaderCell.moreSectionHeaderImageView.image = UIImage(named: "My Account")
            sectionHeaderCell.moreSectionHeaderButtonOutlet.addTarget(self, action: #selector(myAccountSectionButtonTapped), for: .touchUpInside)
            if moreViewModel.myAccountSectionIsHidden == false {
                sectionHeaderCell.moreSectionHeaderButtonOutlet.imageView?.image = UIImage(named: "OutlineRight")
            } else {
                sectionHeaderCell.moreSectionHeaderButtonOutlet.imageView?.image = UIImage(named: "OutlineUp")
            }
        case 3:
            sectionHeaderCell.moreSectionHeaderNameLabel.text = "Settings"
            sectionHeaderCell.moreSectionHeaderImageView.image = UIImage(named: "Settings")
            sectionHeaderCell.moreSectionHeaderButtonOutlet.addTarget(self, action: #selector(settingsSectionButtonTapped), for: .touchUpInside)
            if moreViewModel.settingsSectionIsHidden == false {
                sectionHeaderCell.moreSectionHeaderButtonOutlet.imageView?.image = UIImage(named: "OutlineRight")
            } else {
                sectionHeaderCell.moreSectionHeaderButtonOutlet.imageView?.image = UIImage(named: "OutlineUp")
            }
        default:
            break
        }
        return sectionHeaderCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 0
        case 1:
            return 0
        case 2:
            if moreViewModel.myAccountSectionIsHidden == true {
                return 6
            } else {
                return 0
            }
        case 3:
            if moreViewModel.settingsSectionIsHidden == true {
                return 6
            } else {
                return 0
            }
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moreTableView.dequeueReusableCell(withIdentifier: moreViewModel.moreTabelVewCellID, for: indexPath) as! MoreTabelVewCell
        switch indexPath.section {
        case 2:
            cell.moreOptionNameLabel.text = moreViewModel.myAccountSectionOptionsNames[indexPath.row]
            cell.moreOptionImageView.image = UIImage(named: moreViewModel.myAccountSectionOptionsNames[indexPath.row])
        case 3:
            cell.moreOptionNameLabel.text = moreViewModel.settingsSectionoptionsNames[indexPath.row]
            cell.moreOptionImageView.image = UIImage(named: moreViewModel.settingsSectionoptionsNames[indexPath.row])
//            if indexPath.row == 5 {
//                cell.moreOptionNameLabel.font = .systemFont(ofSize: 14, weight: .bold)
//            }
        default:
            break
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moreTableView.deselectRow(at: indexPath, animated: true)
    }
    @objc func homeSectionButtonTapped() {
        // Go To HOME VC
    }
    @objc func menuSectionButtonTapped() {
        // Go To MENU VC
    }
    @objc func myAccountSectionButtonTapped() {
        if moreViewModel.myAccountSectionIsHidden == false {
            moreViewModel.myAccountSectionIsHidden = true
        } else {
            moreViewModel.myAccountSectionIsHidden = false
        }
        moreTableView.reloadData()
    }
    @objc func settingsSectionButtonTapped() {
        if moreViewModel.settingsSectionIsHidden == false {
            moreViewModel.settingsSectionIsHidden = true
        } else {
            moreViewModel.settingsSectionIsHidden = false
        }
        moreTableView.reloadData()
    }
}
