//
//  CommentTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var commentView: UIView!
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
        
        commentView.layer.cornerRadius = 20
        commentView.layer.borderWidth = 1
        commentView.layer.borderColor = UIColor.init(hexString: "#EAD3B5")?.cgColor
        
        
    }
    
}
