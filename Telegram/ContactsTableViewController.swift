//
//  ContactsTableViewController.swift
//  Telegram
//
//  Created by Iammarino Martina on 22/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var immagine1 = "gl"
    var immagine2 = "user"
    var nome = "Giorgia Liguori"
    var numero = "8726348762384"
    var contatto = "martina"
    var accesso = "3 ore fa"
    
    let section = ["1", "2"]
    
    let items = [["profilo"], ["Martina Iammarino", "Daniela Zabatta", "Fabio Dell'infante", "Gerardo ricciardi", "Toni Pagliaro"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath) as! ContactsTableViewCell
        cell.immagine1?.image = UIImage(named : "i c")
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
            if indexPath.section == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath) as! ContactsTableViewCell
                cell.immagine1?.image = UIImage(named: immagine1)
                cell.immagine1.layer.cornerRadius = 30.0
                cell.immagine1.clipsToBounds = true
                
                cell.nome.text = nome
                cell.numero.text = numero
                
                tableView.estimatedRowHeight = 36.0
                tableView.rowHeight = UITableViewAutomaticDimension
                //set the data here
                
                return cell
            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell2", for: indexPath) as! ContactsTableViewCell2
                
                
               // cell.contatto.text = items[indexPath.section][indexPath.row]
                cell.immagine2?.image = UIImage (named : immagine2)
                return cell
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
