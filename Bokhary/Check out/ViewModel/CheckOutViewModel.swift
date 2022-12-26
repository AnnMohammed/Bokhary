//
//  CheckOutViewModel.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//
import Foundation
class CheckOutViewModel {
    var itemsCount = 2
    var paymentSummaryCount = 4
    var paymentMethods = ["Credit Card","Benefit","Cash","Credit Card"]
    let itemTableViewCellID = "ItemTableViewCell"
    let addressDetailsTableViewCellID = "AddressDetailsTableViewCell"
    let paymentMethodsTableViewCellID = "PaymentMethodsTableViewCell"
    let paymentMethodsCollectionViewCellID = "PaymentMethodsCollectionViewCell"
    let paymentSummary = ["Sub Total :","VAT (10%) :","Delivery charge :" ,"Net Total :"]
    let prices = ["20.00 BHD", "5.000 BHD","5.000 BD ", "25.00 BHD"]
}
