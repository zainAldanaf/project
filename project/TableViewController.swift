//
//  TableViewController.swift
//  project
//
//  Created by Zain Aldanaf on 04/12/2022.
//

import UIKit

class TableViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    let array = ["company ","google","AZAD","hhhhhh"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell" , for: indexPath)
        cell.textLabel!.text=array[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self

        // Do any additional setup after loading the view.
    }
    


}
