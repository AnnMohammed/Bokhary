//
//  MyProfileTableViewCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit

class MyProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var cellIcon: UIImageView!
    
    @IBOutlet weak var profileDetailsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
