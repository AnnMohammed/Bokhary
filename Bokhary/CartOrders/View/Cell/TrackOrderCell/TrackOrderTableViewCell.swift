//
//  TrackOrderTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class TrackOrderTableViewCell: UITableViewCell {

    @IBOutlet weak var trackingView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stylingView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func stylingView() {
        
        trackingView.layer.borderColor = UIColor.white.cgColor
        trackingView.layer.cornerRadius = 20
        trackingView.layer.borderWidth = 1
        
    }
    
}
