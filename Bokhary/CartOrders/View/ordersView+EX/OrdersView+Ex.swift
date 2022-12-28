//
//  OrdersView+Ex.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import Foundation
import UIKit

extension OrdersViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ordersTableViewCell", for: indexPath) as! ordersTableViewCell
            
            return cell
            
        }else if indexPath.section == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrackOrderTableViewCell", for: indexPath) as! TrackOrderTableViewCell
            
            return cell
            
        }else {
            
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        if section == 1 {
            
            let footer = Bundle.main.loadNibNamed("PaymentSymarryTableViewCell", owner: self, options: nil)?.first as! PaymentSymarryTableViewCell
            
            return footer
            
        }else {
            
            return nil
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 1 {
            
            return 160
            
        }else {
            
            return 0
            
        }
    }
}
