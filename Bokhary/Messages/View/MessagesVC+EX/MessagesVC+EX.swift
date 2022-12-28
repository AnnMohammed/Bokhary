//
//  MessagesVC+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import Foundation
import UIKit

extension MessagesViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCell", for: indexPath) as! MessagesTableViewCell
        
        return cell
        
    }
    
    
    
    
}
