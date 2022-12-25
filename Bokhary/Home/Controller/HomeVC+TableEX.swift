//
//  HomeVC+TableEX.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import Foundation
import UIKit

extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
        return cell
        
    }
    
}
