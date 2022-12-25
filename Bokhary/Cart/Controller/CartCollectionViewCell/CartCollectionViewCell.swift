//
//  CartCollectionViewCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {
    let bottomBorder = CALayer()
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    let border = CALayer()
    override func awakeFromNib() {
        super.awakeFromNib()
        let thickness: CGFloat = 15.0
        bottomBorder.frame = CGRect(x: 0.0, y: 35.0, width: 207, height: thickness)
        bottomBorder.backgroundColor = UIColor(named: "Secondary")?.cgColor
    }
    
}
