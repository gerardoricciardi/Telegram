//
//  NewContactsTableViewCell.swift
//  Telegram
//
//  Created by Liguori Giorgia on 23/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

 

class NewContactsTableViewCell: UITableViewCell  {
    
@IBOutlet weak var immagine: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
