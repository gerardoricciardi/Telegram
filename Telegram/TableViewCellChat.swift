//
//  TableViewCellChat.swift
//  Telegram
//
//  Created by Pagliaro Antonio on 22/09/2017.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class TableViewCellChat: UITableViewCell {
    
    @IBOutlet var imageChat : UIImageView!
    @IBOutlet var imageStatoMessaggio : UIImageView!
    @IBOutlet var nomeContatto : UILabel!
    @IBOutlet var lastMessage : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
