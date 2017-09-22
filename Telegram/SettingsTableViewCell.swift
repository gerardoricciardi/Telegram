//
//  SettingsTableViewCell.swift
//  Telegram
//
//  Created by Ricciardi Gerardo on 22/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var firstNameUser: UILabel!
    @IBOutlet weak var secondNameUser: UILabel!
    //@IBOutlet weak var firstNameUser: UILabel!
    @IBOutlet weak var imageUtente: UIImageView!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
