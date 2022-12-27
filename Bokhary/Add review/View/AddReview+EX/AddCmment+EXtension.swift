//
//  AddCmment+EXtension.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import Foundation
import UIKit

extension AddReviewViewController :UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentTableViewCell", for: indexPath) as! CommentTableViewCell
        
        return cell
        
    }
    
    
    
    
}
