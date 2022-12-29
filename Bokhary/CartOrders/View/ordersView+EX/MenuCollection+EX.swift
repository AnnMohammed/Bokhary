//
//  MenuCollection+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import Foundation
import UIKit

extension OrdersViewController: UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as? MenuCollectionViewCell else { return UICollectionViewCell() }
        
        if indexPath.row == 0 {
            
            cell.menuLabel.text = "Current orders"
            
        }else {
            
            cell.menuLabel.text = "Last orders"
            
        }
        
        if indexPath.row == index {
            
            cell.lineView.backgroundColor = UIColor.init(hexString: "#E4A371")
            cell.lineView.isHidden = false
            
        }else {
            
            cell.lineView.backgroundColor = UIColor.white
            cell.lineView.isHidden = true
            
        }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        index = indexPath.row
        collectionView.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.size.width) / 2, height: 60)
        
    }
    
    
}
