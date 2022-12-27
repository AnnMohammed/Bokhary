//
//  ProductTable+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import Foundation
import UIKit

extension ProductDetailsViewController : UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let section = sections[section]
        
        if section.isOpened {
            
            return section.options.count + 1
            
        }else{
            
            return 1
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 2 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.dequeueReusableCell(withIdentifier: "AdditionRemoveTitleCell", for: indexPath) as! AdditionRemoveTitleCell
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                return cellA
            }else{
                
                let cellA = tableView.dequeueReusableCell(withIdentifier: "NotesTableViewCell", for: indexPath) as! NotesTableViewCell
                return cellA
                
            }
            
        }else if indexPath.section == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RelateddishesTableViewCell", for: indexPath) as! RelateddishesTableViewCell
            
            return cell
            
        }else {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.dequeueReusableCell(withIdentifier: "AdditionRemoveTitleCell", for: indexPath) as! AdditionRemoveTitleCell
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                return cellA
                
            }else {
                
                let cellB = tableView.dequeueReusableCell(withIdentifier: "AditionRemoveTableViewCell", for: indexPath) as! AditionRemoveTableViewCell
                return cellB
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cellA = tableView.dequeueReusableCell(withIdentifier: "AdditionRemoveTitleCell", for: indexPath) as! AdditionRemoveTitleCell
        
        if indexPath.row == 0 {
            
            sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
            
            if sections[indexPath.section].isOpened {
                
                cellA.expandableImage.image = UIImage(named: "down Arrow")
                
            }else {
                
                cellA.expandableImage.image = UIImage(named: "topArrow")
                
            }
            
            tableView.reloadSections([indexPath.section], with: .none)
            
        }else {
            
            print("It is Cell not Section")
            
        }
        
    }
    
}
