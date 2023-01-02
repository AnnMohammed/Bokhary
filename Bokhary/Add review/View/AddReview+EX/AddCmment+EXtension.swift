//
//  AddCmment+EXtension.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import Foundation
import UIKit

extension AddReviewViewController :UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return 3
            
        }else {
            
            return 1
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentTableViewCell", for: indexPath) as! CommentTableViewCell
            
            return cell
            
        }else if indexPath.section == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadMoreReviewsTableViewCell", for: indexPath) as! ReadMoreReviewsTableViewCell
            
            return cell
            
        }else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "WriteCommentTableViewCell", for: indexPath) as! WriteCommentTableViewCell
            
            return cell
            
        }
        
    }
    
    
    
    
}
