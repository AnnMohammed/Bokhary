//
//  MoreSectionHeaderCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit

class MoreSectionHeaderCell: UITableViewCell {
    @IBOutlet weak var moreSectionHeaderNameLabel: UILabel!
    @IBOutlet weak var moreSectionHeaderImageView: UIImageView!
    @IBOutlet weak var moreSectionHeaderButtonOutlet: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
