//
//  MyProfileViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit
extension MyProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myProfileTableView.dequeueReusableCell(withIdentifier: myProfileViewModel.myProfileTableViewCellID, for: indexPath) as! MyProfileTableViewCell
        cell.profileDetailsLabel.text = myProfileViewModel.profileDetails[indexPath.row]
        cell.cellIcon.image = UIImage(named: myProfileViewModel.iconsNames[indexPath.row])
        return cell
    }
    
    
}
