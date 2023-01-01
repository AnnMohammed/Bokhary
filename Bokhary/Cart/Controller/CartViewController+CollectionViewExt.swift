//
//  CartViewController+CollectionViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import UIKit
extension CartViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cartViewModel.collectionViewNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cartCollectionView.dequeueReusableCell(withReuseIdentifier: cartViewModel.cartCollectionViewCellID, for: indexPath) as! CartCollectionViewCell
        cell.cellLabel.text = cartViewModel.collectionViewNames[indexPath.item]
        cell.cellImage.image = UIImage(named: cartViewModel.collectionViewIcons[indexPath.item])
                if cartViewModel.selectedItem == indexPath {
                    cell.layer.addSublayer(cell.bottomBorder)
                } else {
                    cell.bottomBorder.removeFromSuperlayer()
                }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if cartViewModel.selectedItem == indexPath {
            return
        } else {
            cartViewModel.selectedItem = indexPath
        }
        cartCollectionView.reloadData()
    }
}
extension CartViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cartCollectionView.layer.bounds.width / 2, height: 40)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 0, bottom: -10, right: 0)
    }
}
