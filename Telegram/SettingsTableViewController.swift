//
//  SettingsTableViewController.swift
//  Telegram
//
//  Created by Ricciardi Gerardo on 22/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    var imageUtente = "gl"
    var firstNameUser = "Giorgia"
    var secondNameUser = "Liguori"
    
    let section = ["1","2"]
    let items = [["profilo"], ["Notifiche e suoni", "Privacy e sicurezza", "Dati e archivio", "Chiamate recenti", "Sticker"]]
    
    let notifiche = ["Avviso", "Anteprima messaggio", "Suono"]
    let switchNotifiche = [true, false, false]
    let switchNotificheHidden = [false, false, true]
    let privacy = ["Utenti Bloccati", "Ultimo accesso", "Chiamate vocali"]
    let switchPrivacy = [false, false, false]
    let switchPrivacyHidden = [true, true, false]
    let dati = ["Utilizzo archivio", "Utilizzo rete", "Chat Private", "Gruppi"]
    let switchDati = [false, false, true, true]
    let switchDatiHidden = [true, true, false, false]
    let chiamate = ["Marino","Lucioni", "Vigorito", "Marino", "Marino", "Ceravolo"]
    let switchChiamateHidden = [true, true, true, true, true, true]
    let switchChiamate = [true, true, false, false, false, false]
    let sticker = ["Mostra scheda sticker", "Strega","A", "Gladiatore", "Tamburo", "Imbriani non mollare"]
    let switchStickerHidden = [false, true, true, true, true, true]
    let switchSticker = [true, true, false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    /*
        if  let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "Indietro", style: .plain, target: nil, action: nil)
        }
 */
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return section.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return self.items[section].count
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let grayHeader = UIView()
        grayHeader.isHidden = true
        if section == 1{
            grayHeader.backgroundColor = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
            grayHeader.frame = CGRect(x: 10, y: 20, width: view.frame.width, height: 30)
            grayHeader.isHidden = false
        }
        return grayHeader
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        var height = 0.0
        if section == 1{
            height = 30
        }
        return CGFloat(height)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingsTableViewCell
            cell.imageUtente?.image = UIImage(named: imageUtente)
            cell.imageUtente.layer.cornerRadius = 30.0
            cell.imageUtente.clipsToBounds = true
            
            cell.firstNameUser.text = firstNameUser
            cell.secondNameUser.text = secondNameUser
            
            tableView.estimatedRowHeight = 36.0
            tableView.rowHeight = UITableViewAutomaticDimension
            //set the data here
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell1", for: indexPath) as! settings1TableViewCell
            //set the data here
            cell.nameOfSetting.text = items[indexPath.section][indexPath.row]
            return cell
        }
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let checkRow = indexPath.row
                if checkRow == 0 {
                    let destinationController = segue.destination as! DetailsTableViewController
                    destinationController.riga = notifiche
                    destinationController.title = items[indexPath.section][indexPath.row]
                    destinationController.switchRiga = switchNotifiche
                    destinationController.switchHidden = switchNotificheHidden
                }
                if checkRow == 1 {
                    let destinationController = segue.destination as! DetailsTableViewController
                    destinationController.riga = privacy
                    destinationController.title = items[indexPath.section][indexPath.row]
                    destinationController.switchRiga = switchPrivacy
                    destinationController.switchHidden = switchPrivacyHidden
                    
                }
                if checkRow == 2 {
                    let destinationController = segue.destination as! DetailsTableViewController
                    destinationController.riga = dati
                    destinationController.title = items[indexPath.section][indexPath.row]
                    destinationController.switchRiga = switchDati
                    destinationController.switchHidden = switchDatiHidden
                    
                }
                if checkRow == 3 {
                    let destinationController = segue.destination as! DetailsTableViewController
                    destinationController.riga = chiamate
                    destinationController.title = items[indexPath.section][indexPath.row]
                    destinationController.switchRiga = switchChiamate
                    destinationController.switchHidden = switchChiamateHidden
                    
                }
                if checkRow == 4 {
                    let destinationController = segue.destination as! DetailsTableViewController
                    destinationController.riga = sticker
                    destinationController.title = items[indexPath.section][indexPath.row]
                    destinationController.switchRiga = switchSticker
                    destinationController.switchHidden = switchStickerHidden
                    
                }
            }
        }
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
