//
//  LoginController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import Intents
import CoreData

class LoginController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoSign(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CreateAccount")
        
        let searchEmail = self.email.text
        let searchPass = self.password.text
        
        request.predicate = NSPredicate (format: "useremail == %@", searchEmail!)
        do{
            let result = try context.fetch(request)
            if result.count > 0 {
                let n = (result[0] as AnyObject).value(forKey: "useremail") as! String
                let p = (result[0] as AnyObject).value(forKey: "password") as! String
                
                if (searchEmail == n && searchPass == p){
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "OredersTableController") as! OredersTableController
                    self.navigationController?.pushViewController(vc, animated: true)
                }else if (searchEmail == n || searchPass == p){
                    
                    let alertController1 = UIAlertController (title: "no user found ", message: "password incorrect ", preferredStyle: UIAlertController.Style.alert)
                    alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    present(alertController1, animated: true, completion: nil)
                }
            }
            else{
                let alertController1 = UIAlertController (title: "no user found ", message: "invalid username ", preferredStyle: UIAlertController.Style.alert)
                alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alertController1, animated: true, completion: nil)
                print("no user found")
            }
        }catch{
            print("error")
        }
        
        
        //            if(email.text == "ali" && password.text=="123456" ){
        //                 let storyboard=UIStoryboard(name: "Main", bundle: nil)
        //                let vc = storyboard.instantiateViewController(withIdentifier: "Home")
        //                vc.modalPresentationStyle = .overFullScreen
        //                present(vc, animated: true)
        //
        //            }else{
        //
        //                let alert = UIAlertController(title: "error ", message: "user name or password wrong ", preferredStyle: .alert)
        //
        //                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        //                present(alert,animated: true,completion: nil)
        //            }
    }
    
}



