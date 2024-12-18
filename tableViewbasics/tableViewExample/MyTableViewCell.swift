//
//  MyTableViewCell.swift
//  tableViewbasics
//
//  Created by Syed on 18/12/24.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet var labelText : UILabel!
    
    @IBOutlet var myImageView : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
