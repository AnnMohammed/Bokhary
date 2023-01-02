//
//  CategoryCollectionViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 26/12/2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var indicatorView: UIView!
    @IBOutlet weak var categoriesName: UILabel!
    @IBOutlet weak var categoriesImag: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoriesImag.layer.cornerRadius = 25
        
    }

}
