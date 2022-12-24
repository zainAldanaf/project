//
//  CompanyDetailsViewController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit
import CoreData

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
    
    @IBAction func addToFav(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                           return
        }
                let context = appDelegate.persistentContainer.viewContext
                let newFav = NSEntityDescription.insertNewObject(forEntityName: "FavoriteCompany", into: context) as NSManagedObject
                newFav.setValue(companyName, forKey: "companyNameFav")
                try?context.save()
            }
    }


