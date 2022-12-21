//
//  SIgnController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import CoreData

class SIgnController: UIViewController {

    
    @IBOutlet weak var passSign: UITextField!
    @IBOutlet weak var emailSign: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func SigninBtn(_ sender: Any) {
        
        let userEmail = emailSign.text
        let userPassword = passSign.text

        if (userEmail!.isEmpty || userPassword!.isEmpty){
            let alert = UIAlertController(title: "error ", message: "user name or password Empty ", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert,animated: true,completion: nil)
            
        }
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                   return
               }
        let context = appDelegate.persistentContainer.viewContext
        var newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context) as NSManagedObject
        
             newUser.setValue(userEmail, forKey: "username")
             newUser.setValue(userPassword, forKey: "password")
        
        try?context.save()

        
    }
    
    
    
    
}
