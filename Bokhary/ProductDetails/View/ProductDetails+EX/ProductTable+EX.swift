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
                
                cellA.itemName.text = " Add any notes"
                
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
            
            if indexPath.section == 0 {
                if indexPath.row == 0 {
                    
                    let cellA = tableView.dequeueReusableCell(withIdentifier: "AdditionRemoveTitleCell", for: indexPath) as! AdditionRemoveTitleCell
                    
                    cellA.itemName.text = "Additions"
                    
                    if sections[indexPath.section].isOpened {
                        
                        cellA.expandableImage.image = UIImage(named: "down Arrow")
                        
                    }else {
                        
                        cellA.expandableImage.image = UIImage(named: "topArrow")
                        
                    }
                    
                    return cellA
                    
                }else {
                    
                    let cell = tableView.dequeueReusableCell(withIdentifier: "AditionRemoveTableViewCell", for: indexPath) as! AditionRemoveTableViewCell
                    
                    if cell.isSelected {
                        
                        cell.checkedBoxImage.image = UIImage(named:"Checked-box")
                        
                        print("It is Cell not Section")
                        
                    }else {
                        
                        cell.checkedBoxImage.image = UIImage(named:"itemNotselected")
                        
                    }
                    
                    return cell
                }
                
            } else {
                
                if indexPath.row == 0 {
                    
                    let cellA = tableView.dequeueReusableCell(withIdentifier: "AdditionRemoveTitleCell", for: indexPath) as! AdditionRemoveTitleCell
                    
                    cellA.itemName.text = "removes"
                    
                    if sections[indexPath.section].isOpened {
                        
                        cellA.expandableImage.image = UIImage(named: "down Arrow")
                        
                    }else {
                        
                        cellA.expandableImage.image = UIImage(named: "topArrow")
                        
                    }
                    
                    return cellA
                    
                }else {
                    
                    let cell = tableView.dequeueReusableCell(withIdentifier: "AditionRemoveTableViewCell", for: indexPath) as! AditionRemoveTableViewCell
                    
                    if cell.isSelected {
                        
                        cell.checkedBoxImage.image = UIImage(named:"Checked-box")
                        
                        print("It is Cell not Section")
                        
                    }else {
                        
                        cell.checkedBoxImage.image = UIImage(named:"itemNotselected")
                        
                    }
                    
                    return cell
                }
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
        }else if indexPath.section == 1 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
        }else if indexPath.section == 2 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
        }else {
            
            print("It is Cell not Section")
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
            
        }else if indexPath.section == 1 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
            
        }else if indexPath.section == 2 {
            
            if indexPath.row == 0 {
                
                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
                
                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
                
                if sections[indexPath.section].isOpened {
                    
                    cellA.expandableImage.image = UIImage(named: "down Arrow")
                    
                }else {
                    
                    cellA.expandableImage.image = UIImage(named: "topArrow")
                    
                }
                
                tableView.reloadSections([indexPath.section], with: .none)
                
            }
            
            
        }else {
            
            print("It is Cell not Section")
            
        }
        
    }
    
}

//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//
////        if indexPath.row != 0 {
////
////            let cell = tableView.cellForRow(at: indexPath) as! AditionRemoveTableViewCell
////
//////            cell.checkedBoxImage.image = UIImage(named:"Checked-box")
//////
//////            tableView.reloadRows(at: [IndexPath(row: indexPath.row, section: indexPath.section)], with: .none)
////
////            if cell.isSelected {
////
////                cell.checkedBoxImage.image = UIImage(named:"Checked-box")
////
////                print("It is Cell not Section")
////
////                tableView.reloadData()
////
////            }else {
////
////
////                cell.checkedBoxImage.image = UIImage(named:"itemNotselected")
////
////            }
////
////            print("It is Cell not Section")
////
////        }
//
//        if indexPath.section == 0 {
//
//            if indexPath.row == 0 {
//
//                let cellA = tableView.cellForRow(at: indexPath) as! AdditionRemoveTitleCell
//
//                sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
//
//                if sections[indexPath.section].isOpened {
//
//                    cellA.expandableImage.image = UIImage(named: "down Arrow")
//
//                }else {
//
//                    cellA.expandableImage.image = UIImage(named: "topArrow")
//
//                }
//
//                tableView.reloadSections([indexPath.section], with: .none)
//
//            }
//
//        }else {
//
//            let cell = tableView.cellForRow(at: indexPath) as! AditionRemoveTableViewCell
//
////            cell.checkedBoxImage.image = UIImage(named:"Checked-box")
////
////            tableView.reloadRows(at: [IndexPath(row: indexPath.row, section: indexPath.section)], with: .none)
//
//            if cell.isSelected {
//
//                cell.checkedBoxImage.image = UIImage(named:"Checked-box")
//
//                print("It is Cell not Section")
//
//                tableView.reloadData()
//
//            }else {
//
//
//                cell.checkedBoxImage.image = UIImage(named:"itemNotselected")
//
//            }
//
//            print("It is Cell not Section")
//
//        }
//
//    }
