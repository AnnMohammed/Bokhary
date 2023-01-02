//
//  ordersTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class ordersTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stylingImg()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    override func layoutSubviews() {
        layoutIfNeeded()
    }
    
    func stylingImg() {
        
        itemImage.layer.borderWidth = 1
        itemImage.layer.cornerRadius = 20
        itemImage.layer.borderColor = UIColor.black.cgColor
        
    }
    
}
