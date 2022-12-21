//
//  OrderDetailsViewController.swift
//  project
//
//  Created by Zain Aldanaf on 18/12/2022.
//

import UIKit

class OrderDetailsViewController: UIViewController {

    @IBOutlet weak var imgD: UIImageView!
    @IBOutlet weak var modelLB: UILabel!
    @IBOutlet weak var priceLB: UILabel!
    @IBOutlet weak var cityLB: UILabel!
    
    var order: Order?
    
    var img = UIImage()
    var model = ""
    var price = ""
    var city = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imgD.image = img
        modelLB.text = model
        priceLB.text = price
        cityLB.text = city
    }
    

    
}
