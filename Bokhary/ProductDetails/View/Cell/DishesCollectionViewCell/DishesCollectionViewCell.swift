//
//  DishesCollectionViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import UIKit

class DishesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var relatedDishesIMg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stylingIMG()
    }
    
    func stylingIMG() {
        
        relatedDishesIMg.layer.cornerRadius = 20
        relatedDishesIMg.layer.borderWidth = 1
        relatedDishesIMg.layer.borderColor = UIColor.init(hexString: "#CE152069")?.cgColor
        
    }
    
}
