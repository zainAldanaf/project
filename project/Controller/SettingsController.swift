//
//  SettingsController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit

class SettingsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func logout(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
