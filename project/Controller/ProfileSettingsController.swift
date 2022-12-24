//
//  ProfileSettingsController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit
import CoreData
class ProfileSettingsController: UIViewController {

   private var newName : CreateAccount?
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var txtEdit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func changeName(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CreateAccount")
        // editName
        
        if let editName = newName{
            editName.userName = txtEdit.text
        }
        appDelegate.saveContext()
        
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

            if let img = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
                profileImg.image = img
            }
            picker.dismiss(animated: true , completion: nil)

        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true , completion: nil)
        }
        
        
    }


