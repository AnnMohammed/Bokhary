//
//  SelectAddressTableViewCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit

class SelectAddressTableViewCell: UITableViewCell {
    @IBOutlet weak var addressDetailsLabelOne: UILabel!
    @IBOutlet weak var addressDetailsLabelTwo: UILabel!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var addressCheckedButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
