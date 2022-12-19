//
//  SplashController.swift
//  project
//
//  Created by Zain Aldanaf on 01/12/2022.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2){
            self.performSegue(withIdentifier: "OpenView", sender: nil)
            
        }

            }
    

}
