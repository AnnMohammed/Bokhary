//
//  CartViewModel.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import Foundation
class CartViewModel {
    var count = 1
    var selectedItem: IndexPath?
    let cartCollectionViewCellID = "CartCollectionViewCell"
    let carttTableViewCellID = "CartTableViewCell"
    let additions = ["Tomato", "Onion"]
    let removes = ["Paper"]
    let paymentSummary = ["Sub Total :","VAT (10%) :","Net Total :"]
    let prices = ["20.00 BHD", "5.000 BHD", "25.00 BHD"]
    let collectionViewIcons = ["deliveryIcon", "pickupIcon"]
    let collectionViewNames = ["Delivery","Pick up"]
    let sectionHeaderCellID = "SectionHeaderCell"
}
