//
//  MessageTypeCV+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import Foundation
import UIKit

extension MessagesViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessageTypeCollectionViewCell", for: indexPath) as? MessageTypeCollectionViewCell else { return UICollectionViewCell() }
        
        if indexPath.row == 0 {
            
            cell.messageTypLabel.text = "Complains"
            
        }else if indexPath.row == 1 {
            
            cell.messageTypLabel.text = "Offers"
            
        }else {
            
            cell.messageTypLabel.text = "Events"
            
        }
        
        if indexPath.row == index {
            
            cell.indicatorView.backgroundColor = UIColor.init(hexString: "#E4A371")
            cell.indicatorView.isHidden = false
            
        }else {
            
            cell.indicatorView.backgroundColor = UIColor.white
            cell.indicatorView.isHidden = true
            
        }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        index = indexPath.row
        collectionView.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.size.width) / 3, height: 60)
        
    }
    
}
