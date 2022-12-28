//
//  NotificationsViewController+TableViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit
extension NotificationsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationsViewModel.notificationCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notificationsTableView.dequeueReusableCell(withIdentifier: notificationsViewModel.notificationTableViewCellID, for: indexPath) as! NotificationTableViewCell
        cell.notificationMessageLabel.text = notificationsViewModel.notificationMessages[indexPath.row]
        cell.notificationDateLabel.text = "1-9-2020"
        cell.notificationTimeLabel.text = "03:00 am"
        return cell
    }
    
    
}
