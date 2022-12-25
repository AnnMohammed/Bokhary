//
//  HomeTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageTableView: UIImageView!
    @IBOutlet weak var tableCellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        contentView.layer.cornerRadius = 20
    }
    
    
}
