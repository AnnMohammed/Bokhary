//
//  PlaceOrderButtonTableViewCell.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 27/12/2022.
//

import UIKit

class PlaceOrderButtonTableViewCell: UITableViewCell {
    @IBOutlet weak var placeOrderButtonOutlet: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        //buttonsColors()
    }
    func buttonsColors() {
        self.placeOrderButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "Place order")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
