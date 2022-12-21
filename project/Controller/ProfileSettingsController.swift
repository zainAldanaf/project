//
//  ProfileSettingsController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit

class ProfileSettingsController: UIViewController {

    @IBOutlet weak var profileImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func editProfile(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
}
    extension ProfileSettingsController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

           // print("\(info)")
            if let img = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
                profileImg.image = img
            }
            picker.dismiss(animated: true , completion: nil)

        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true , completion: nil)
        }
        
        
    }


