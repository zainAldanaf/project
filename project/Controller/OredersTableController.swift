//
//  OredersTableController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit

class OredersTableController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
      var order : Order?
       var arrOrder=[Order]()
    
    override func viewDidLoad() {
        TableView.delegate = self
        TableView.dataSource = self
        
        TableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        super.viewDidLoad()
        
        arrOrder.append(Order(image: UIImage(named:"Image-1")!, name: "villa", place: " dubai ", price: "10000$ "))
        arrOrder.append(Order(image: UIImage(named:"Image-2")!, name: "flat", place: " Abu Dhabi ", price: "2000$ "))
        arrOrder.append(Order(image: UIImage(named:"Image-3")!, name: "building", place: " Gaza ", price: "1000$ "))
        arrOrder.append(Order(image: UIImage(named:"image-5")!, name: "villa", place: " Kuwait ", price: "1600$ "))
        arrOrder.append(Order(image: UIImage(named:"image-4")!, name: "Apartment", place: " Kuwait ", price: "1600$ "))
        arrOrder.append(Order(image: UIImage(named:"image-6")!, name: "villa", place: " Dubi ", price: "9600$ "))

    }
    
}

extension OredersTableController :UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOrder.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell )!
        let data = arrOrder[indexPath.row]
        cell.setupCellOrder(imageO: data.image, nameO: data.name, placeO: data.place, priceO: data.price)
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "OrderDetailsViewController") as? OrderDetailsViewController{
            vc.order = arrOrder[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
            
            
//                        vc.img = UIImage(named: arrOrder[indexPath.row])!
//                        vc.model = arrOrder[indexPath.row]
//                        vc.city = arrOrder[indexPath.row]
//                        vc.price = arrOrder[indexPath.row]
        }
    }
}
