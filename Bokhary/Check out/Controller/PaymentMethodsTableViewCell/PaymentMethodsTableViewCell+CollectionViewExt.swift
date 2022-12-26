//
//  PaymentMethodsTableViewCell+CollectionViewExt.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit
extension PaymentMethodsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return checkOutViewModel.paymentMethods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = paymentMethodsCollectionView.dequeueReusableCell(withReuseIdentifier: checkOutViewModel.paymentMethodsCollectionViewCellID, for: indexPath) as! PaymentMethodsCollectionViewCell
        cell.paymentMethodNameLabel.text = checkOutViewModel.paymentMethods[indexPath.item]
        cell.paymentMethodImageView.image = UIImage(named: checkOutViewModel.paymentMethods[indexPath.item])
        if selectedItem == indexPath {
            cell.paymentMethodImageView.backgroundColor = UIColor(named: "Secondary")
        } else {
            cell.paymentMethodImageView.backgroundColor = UIColor.clear
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedItem == indexPath {
            
        } else {
            selectedItem = indexPath
        }
        paymentMethodsCollectionView.reloadData()
    }
}
extension PaymentMethodsTableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let leftAndRightPaddings: CGFloat = 1
        let numberOfItemsPerRow: CGFloat = 2.0
        let width = (collectionView.frame.width-leftAndRightPaddings)/numberOfItemsPerRow
        return CGSize(width: 90, height: 130)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 5)
    }
}
