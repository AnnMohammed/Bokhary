//
//  FavoriteTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var favoriteItemImage: UIImageView!
    @IBOutlet weak var favoriteCellview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        stylingViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//        override func layoutSubviews() {
//            super.layoutSubviews()
//
//            contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 17, left: 0, bottom: 0, right: 0))
//        }
    
    
    func stylingViews() {
        
        favoriteItemImage.layer.borderWidth = 1
        favoriteItemImage.layer.cornerRadius = 15
        favoriteItemImage.layer.borderColor = UIColor.black.cgColor
        
        favoriteCellview.layer.borderWidth = 0.5
        favoriteCellview.layer.cornerRadius = 15
        favoriteCellview.layer.borderColor = UIColor.init(hexString: "#EAD3B5")?.cgColor
        
        
    }
    
}
