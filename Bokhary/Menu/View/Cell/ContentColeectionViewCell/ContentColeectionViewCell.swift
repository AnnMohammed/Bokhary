//
//  ContentColeectionViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 26/12/2022.
//

import UIKit

class ContentColeectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var priceLabelOutsideStack: UILabel!
    @IBOutlet weak var priceLabelInsideStack: UILabel!
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentCollectionCellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentCollectionCellView.layer.borderWidth = 1
        contentCollectionCellView.layer.cornerRadius = 20
        
        contentImage.layer.borderWidth = 1
        contentImage.layer.cornerRadius = 20
    }

    
    
    
}
