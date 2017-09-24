//
//  MessageViewController.swift
//  Telegram
//
//  Created by Pagliaro Antonio on 23/09/2017.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet var profilePhoto : UIImageView!
    @IBOutlet var  nomeContattoLabel : UILabel!
    @IBOutlet var  accessoLabel : UILabel!
    
    var nomeContatto=""
//    var accesso=""
    
    var stringFoto = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhoto.image=UIImage( named : stringFoto)
       profilePhoto.layer.cornerRadius=30.0
        profilePhoto.clipsToBounds=true
        
        nomeContattoLabel.text=nomeContatto
        accessoLabel.text="online"
//        accessoLabel.text=accesso

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
