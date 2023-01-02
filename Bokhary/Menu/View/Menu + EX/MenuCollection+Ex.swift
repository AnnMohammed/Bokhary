//
//  MenuCollection+Ex.swift
//  Bokhary
//
//  Created by Ann mohammed on 26/12/2022.
//

import Foundation
import UIKit

extension MenuViewController : UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.viewWillLayoutSubviews()
        self.categorieCollectionView.layoutIfNeeded()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == self.categorieCollectionView {
            
            return 1
            
        }
        else {
            
            return 5
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.categorieCollectionView {
            
            return productsArr.count
            
        }
        else {
            
            if !isChanged {
                
                return 2
            }else{
                
                return 1
            }
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == self.categorieCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            
            if indexPath.row == index {
                
                cell.indicatorView.backgroundColor = UIColor.init(hexString: "#E4A371")
                cell.indicatorView.isHidden = false
                
            }else {
                
                cell.indicatorView.backgroundColor = UIColor.white
                cell.indicatorView.isHidden = true
                
            }
            
            return cell
            
        }
        
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentColeectionViewCell", for: indexPath) as! ContentColeectionViewCell
            
            if isChanged {
                
                cell.priceLabelInsideStack.isHidden = true
                cell.priceLabelOutsideStack.isHidden = false
                
            }else {
                
                cell.priceLabelInsideStack.isHidden = false
                cell.priceLabelOutsideStack.isHidden = true
                
            }
            
            return cell
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.categorieCollectionView {
            
            return CGSize(width: (categorieCollectionView.frame.size.width - 5) / 3, height: 100)
            
        }
        else {
            
            if isChanged {
                
                return CGSize(width: contentCollectionview.frame.size.width, height: 214 )
                
            }else {
                
                return CGSize(width: (contentCollectionview.frame.size.width - 10) / 2, height: 214 )
                
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.contentCollectionview {
            
            let VC = ProductDetailsViewController()
    //        VC.modalPresentationStyle = .overCurrentContext
    //        VC.modalTransitionStyle = .crossDissolve
    //        present(VC, animated: true, completion: nil)
            navigationController?.pushViewController(VC, animated: true)
            
        }
        else {
            
            index = indexPath.row
            counter = index
            collectionView.reloadData()
            
        }
        
    }
    
}
