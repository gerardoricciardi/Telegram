//
//  ContactsTableViewController.swift
//  Telegram
//
//  Created by Iammarino Martina on 22/09/17.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController, UISearchResultsUpdating{
    
    
    
    var isSearching =  false
    var immagine1 = "gl"
    var immagini = ["add","user1","user2","user3","user4","user5","user6"]
    var nome = "Giorgia Liguori"
    var numero = "+39 33983748"
    var searchController : UISearchController!
    var searchResult :[Contatto]!
//    var accesso = [" ", "last seen 25 minutes ago"," last seen 5 minutes ago", "last seen 15 minutes ago","last seen 35 minutes ago"]
   let section = ["1", "2"]
    
    
    
    var contatti :[Contatto]=[Contatto(nome:"Invite Friends",foto:"add",accesso:""),
              Contatto(nome:"Martina Iammarino",foto:"user1",accesso:"last seen 2 minutes ago"),
              Contatto(nome:"Daniela Zabatta",foto:"user2",accesso:"last seen 25 minutes ago"),
              Contatto(nome:"Fabio Dell'Infante",foto:"user3",accesso:"last seen 5 minutes ago"),
              Contatto(nome:"Gerardo Ricciardi",foto:"user4",accesso:"last seen 2 minutes ago"),
              Contatto(nome:"Toni Pagliaro",foto:"user5",accesso:"last seen 21 minutes ago"),
              ]
    
    let items = [["profilo"], ["Invite Friends","Martina Iammarino", "Daniela Zabatta", "Fabio Dell'infante", "Gerardo ricciardi", "Toni Pagliaro"]]
    
    
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let grayHeader = UIView()
        grayHeader.isHidden = true
        if section == 1{
            grayHeader.backgroundColor = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
            grayHeader.frame = CGRect(x: 10, y: 70, width: view.frame.width, height: 30)
            grayHeader.isHidden = false
            
        }
        return grayHeader
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        var height = 0.0
        if section == 1{
            height = 20
            
        }
        return CGFloat(height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        searchController=UISearchController(searchResultsController: nil)
        
        tableView.tableHeaderView=searchController.searchBar
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation=false
        
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
        if(searchController.isActive){
            return searchResult.count
        }else{
            
        
        return self.items[section].count
        }
    }
    
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
                
                let contatto=(searchController.isActive) ?
                searchResult[indexPath.row] : contatti[indexPath.row]

                cell.accesso!.text=contatto.accesso
                cell.contatto!.text=contatto.nome
                cell.immagine2?.image=UIImage(named :contatto.foto)
                
//              cell.accesso.text = accesso [indexPath.row]
//               cell.contatto.text = items[indexPath.section][indexPath.row]
//               cell.immagine2?.image = UIImage(named : immagini[indexPath.row])
//                
                return cell
            }
        }

    
    func filterContent(for searchText: String){
        //        la funzione filter riceve come input una funzione da usare per implementare un filtro
        searchResult=contatti.filter({ (contatto)->Bool in
            if let name=contatto.nome{
                let isMatch = name.localizedCaseInsensitiveContains(searchText)
                return isMatch
            }
            return false
        })
    }
    
    func updateSearchResults(for searchController : UISearchController){
        if let searchText=searchController.searchBar.text{
            filterContent(for: searchText)
            tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addContact"{
            let destinationController = segue.destination as! NewContactTableViewController
            destinationController.immagine = "user1"
            destinationController.label = "Giorgia"
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
