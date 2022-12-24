//
//  SIgnController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import CoreData

class SIgnController: UIViewController {

    
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var passSign: UITextField!
    @IBOutlet weak var emailSign: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func SigninBtn(_ sender: Any) {
        
        let userEmail = emailSign.text
        let userPassword = passSign.text
        let namee = name.text
        let numberr = number.text

        if (userEmail!.isEmpty || userPassword!.isEmpty || namee!.isEmpty
            || numberr!.isEmpty ){
            let alert = UIAlertController(title: "error ", message: "All fields are required! ", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert,animated: true,completion: nil)
            
        }
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                   return
               }
        let context = appDelegate.persistentContainer.viewContext
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "CreateAccount", into: context) as NSManagedObject
             
             newUser.setValue(namee, forKey: "userName")
             newUser.setValue(userEmail, forKey: "useremail")
             newUser.setValue(userPassword, forKey: "password")
        
        try?context.save()

        
    }
    
    
    
    
}
