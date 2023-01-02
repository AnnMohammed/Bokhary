//
//  NotesTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import UIKit

class NotesTableViewCell: UITableViewCell {

    @IBOutlet weak var noteTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stylingTextView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func stylingTextView() {
        
        noteTextView.layer.cornerRadius = 25
        noteTextView.layer.borderWidth = 1
        noteTextView.layer.borderColor = UIColor.init(hexString: "#E4A371")?.cgColor
        
    }
    
}
