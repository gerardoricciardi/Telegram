//
//  DetasilsTableViewCell.swift
//  Telegram
//
//  Created by Ricciardi Gerardo on 23/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class DetasilsTableViewCell: UITableViewCell {

    @IBOutlet weak var labelArrow: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
