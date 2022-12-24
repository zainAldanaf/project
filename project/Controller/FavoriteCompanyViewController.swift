//
//  FavoriteCompanyViewController.swift
//  project
//
//  Created by Zain Aldanaf on 21/12/2022.
//

import UIKit
import CoreData
import Intents

class FavoriteCompanyViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var favTable: UITableView!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var fav : [FavoriteCompany]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favTable.delegate = self
        favTable.dataSource = self
        
        fetchFav()

}
    func fetchFav(){
//fetch the data from FavoriteCompany core data and display in table view
        do{
            self.fav =  try context.fetch(FavoriteCompany.fetchRequest())
            favTable.reloadData()
        }catch{
            
    }
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fav?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favTable.dequeueReusableCell(withIdentifier: "favCell",for: indexPath)
        let company = self.fav![indexPath.row]
        cell.textLabel?.text = company.companyNameFav
        return cell
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style:.normal, title: "delete") { (action, view, handler) in
            // which one to remove
            let delete = self.fav![indexPath.row]
            
            //remove the company
            self.context.delete(delete)
            
            //save the data
            do{
                try self.context.save()
            }catch{
                
            }
            //Rw-fetch the data
            self.fetchFav()
        }
        deleteAction.backgroundColor = .red
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        
        return config
    }
}



