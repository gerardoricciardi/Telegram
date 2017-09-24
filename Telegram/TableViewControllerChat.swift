//
//  TableViewControllerChat.swift
//  Telegram
//
//  Created by Pagliaro Antonio on 22/09/2017.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import UIKit

class TableViewControllerChat: UITableViewController,UISearchResultsUpdating {

    var chat:[String]=["chat1","chat2","chat3"]
    
    var contatti:[Contatto]=[Contatto(nome:"Scarlett",lastMessage:"ciao",foto:"sj"),Contatto(nome:"Alex",lastMessage:"ci vediamo dopo",foto:"alex"),Contatto(nome:"Jon",lastMessage:"sto in palestra",foto:"jon")]
    var searchResult :[Contatto]!
    var searchController : UISearchController!
    
    
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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchController.isActive){
            return searchResult.count
        }else{
            
            return chat.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellChat", for: indexPath) as! TableViewCellChat
        
        let contatto=(searchController.isActive) ?
            searchResult[indexPath.row] : contatti[indexPath.row]

        
        cell.imageStatoMessaggio?.image=UIImage(named:"messaggioLetto")

        cell.imageChat?.image=UIImage(named : contatto.foto)
        cell.imageChat.layer.cornerRadius=30.0
        cell.imageChat.clipsToBounds=true
        cell.nomeContatto!.text=contatto.nome
        cell.lastMessage!.text=contatto.lastMessage
        
        
      
        // Configure the cell...

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="messaggi"{
            print("Metodo prepare....")
            if let indexPath=tableView.indexPathForSelectedRow{
                let destinationController=segue.destination as! MessageViewController
                destinationController.stringFoto="sj"

            }
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
