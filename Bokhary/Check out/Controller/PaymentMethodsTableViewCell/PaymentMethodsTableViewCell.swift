//
//  PaymentMethodsTableViewCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit

class PaymentMethodsTableViewCell: UITableViewCell {
    var checkOutViewModel = CheckOutViewModel()
    @IBOutlet weak var paymentMethodsCollectionView: UICollectionView!
    var selectedItem: IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewConfig()
    }
    func collectionViewConfig() {
        paymentMethodsCollectionView.delegate = self
        paymentMethodsCollectionView.dataSource = self
        paymentMethodsCollectionView.register(UINib(nibName: checkOutViewModel.paymentMethodsCollectionViewCellID, bundle: .main), forCellWithReuseIdentifier: checkOutViewModel.paymentMethodsCollectionViewCellID)
        paymentMethodsCollectionView.isScrollEnabled = false
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

