//
//  CompanyDetailsViewController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit

class CompanyDetailsViewController: UIViewController {

    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var companyPhoto: UIImageView!
    
    var company : Company?
    
    var img = UIImage()
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        companyPhoto.image = img
        companyName.text = name

    }
}
