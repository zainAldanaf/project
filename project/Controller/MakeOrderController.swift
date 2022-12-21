//
//  MakeOrderController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import CoreData

//class LocalStorageManager{
//    private static let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
//    static var context : NSManagedObjectContext {
//        return delegate.persistentContainer.viewContext
//    }
//
//    static func addNewOrder(rooms: String , price : String , photo:UIImage
//      ,name: String , map:String , floor:String ,company:String , city:String , cillingHight:  String , space:String, area:String){
//
//        let newOrder = NSEntityDescription.insertNewObject(forEntityName: "OrderData", into: context) as! OrderData
//
//        newOrder.roomNo = rooms
//        newOrder.price = price
//        newOrder.photo = photo.pngData()
//        newOrder.name = name
//        newOrder.map = map
//        newOrder.floorNo = floor
//        newOrder.company = company
//        newOrder.city = city
//        newOrder.cillingHight = cillingHight
//        newOrder.buildingSpace = space
//        newOrder.area = area
//
//        try? context.save()
    //}
//}
class MakeOrderController: UIViewController {

//
    @IBOutlet weak var addName: UITextField!
    @IBOutlet weak var addCity: UITextField!
    @IBOutlet weak var addPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // access persistent container and manage object context
        //(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    @IBAction func addOrder(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                   return
               }
            let context = appDelegate.persistentContainer.viewContext
            func addNewOrder(rooms: String , price : String , photo:UIImage
              ,name: String , map:String , floor:String ,company:String , city:String , cillingHight:  String , space:String, area:String){
        
                let newOrder = NSEntityDescription.insertNewObject(forEntityName: "OrderData", into: context) as! OrderData
        
                newOrder.roomNo = rooms
                newOrder.price = price
                newOrder.photo = photo.pngData()
                newOrder.name = name
                newOrder.map = map
                newOrder.floorNo = floor
                newOrder.company = company
                newOrder.city = city
                newOrder.cillingHight = cillingHight
                newOrder.buildingSpace = space
                newOrder.area = area
        
                try? context.save()
           
    }
}
    
    @IBAction func openAlbum(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }

}

extension MakeOrderController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        print("\(info)")
        picker.dismiss(animated: true , completion: nil)

    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true , completion: nil)
    }
}


