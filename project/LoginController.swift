//
//  LoginController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import Intents

class LoginController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        @IBAction func gotoSign(_ sender: Any) {
                                
            if(email.text == "ali" && password.text=="123456" ){
                 let storyboard=UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Home")
                vc.modalPresentationStyle = .overFullScreen
                present(vc, animated: true)
                
            }else{
                let alert = UIAlertController(title: "error ", message: "user name or password wrong ", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alert,animated: true,completion: nil)
            }
        }

    }
    
  

