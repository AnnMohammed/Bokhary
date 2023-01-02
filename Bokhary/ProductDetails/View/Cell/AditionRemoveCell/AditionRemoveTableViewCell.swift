//
//  AditionRemoveTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import UIKit

class AditionRemoveTableViewCell: UITableViewCell {

    @IBOutlet weak var checkedBoxImage: UIImageView!
    @IBOutlet weak var itemNamelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        if selected {

            checkedBoxImage.image = UIImage(named:"Checked-box")

            print("It is Cell not Section")

        }else {

            checkedBoxImage.image = UIImage(named:"itemNotselected")

        }
        
    }
    
}
