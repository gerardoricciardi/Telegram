//
//  ContactsTableViewCell2.swift
//  Telegram
//
//  Created by Liguori Giorgia on 23/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class ContactsTableViewCell2: UITableViewCell {
    
    @IBOutlet weak var contatto: UILabel!
     @IBOutlet weak var immagine2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
