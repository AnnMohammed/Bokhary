//
//  HomeVC+TableEX.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import Foundation
import UIKit

extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return 1
            
        }else {
            
            return 5
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SliderHomeTableViewCell", for: indexPath) as! SliderHomeTableViewCell
            
            cell.sliderHomePageControl.numberOfPages = 3
            cell.handleTimer()
            
            return cell
            
        }else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
            cell.itemName.text = "lamb chops"
            return cell
            
        }
        
    }
    
}
