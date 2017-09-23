//
//  Setting1RowViewController.swift
//  Telegram
//
//  Created by Ricciardi Gerardo on 23/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class Setting1RowViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var nome = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = nome
        
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
