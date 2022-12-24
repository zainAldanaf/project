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
        
        let notFirstTime = UserDefaults.standard.bool(forKey: "LoginController")
        if !notFirstTime{
            UserDefaults.standard.set(true, forKey: "LoginController")
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false ) { t in
            //    self.redirect
                
            }
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2){
            self.performSegue(withIdentifier: "OpenView", sender: nil)
            
        }

            }
    

}
extension SplashController{
    func redirect(toViewControllerIdentifier id : String){
        if let vc = storyboard?.instantiateViewController(withIdentifier: id){
            if #available(iOS 13.0, *){
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    if #available(iOS 15.0, *){
                        windowScene.windows.first!.rootViewController = vc
                        windowScene.windows.first!.makeKeyAndVisible()
                    }else{
                        UIApplication.shared.windows.first?.rootViewController = vc
                        UIApplication.shared.windows.first?.makeKeyAndVisible()
                    }
                }
            }else{
                self.view.window?.rootViewController = vc
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
}
