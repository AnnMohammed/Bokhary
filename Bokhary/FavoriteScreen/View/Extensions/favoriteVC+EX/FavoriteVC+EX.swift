//
//  FavoriteVC+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import Foundation
import UIKit

extension FavoriteViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteTableViewCell", for: indexPath) as! FavoriteTableViewCell
        
        return cell
    }
    
    
    
    
}
