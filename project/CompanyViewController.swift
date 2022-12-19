//
//  CompanyViewController.swift
//  project
//
//  Created by Zain Aldanaf on 08/12/2022.
//

import UIKit

class CompanyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
  
    
    @IBOutlet weak var companyCollectionView:UICollectionView!
    var arrcompany = [company]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyCollectionView.delegate = self
        companyCollectionView.dataSource = self

        arrcompany.append(company(photo: UIImage(named: "Image")!, name: "Azad"))
        arrcompany.append(company(photo: UIImage(named: "Image-1")!, name: "BluSkay"))
        arrcompany.append(company(photo: UIImage(named: "Image-2")!, name: "Ora"))
        arrcompany.append(company(photo: UIImage(named: "Image-3")!, name: "Gulf Sothebys"))
        arrcompany.append(company(photo: UIImage(named: "image-4")!, name: "Moqawalat"))
        arrcompany.append(company(photo: UIImage(named: "image-5")!, name: "CBRE Group"))
    
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrcompany.count
      }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "companyCell", for: indexPath) as! CompanyViewControllerCell
        
        let data = arrcompany[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name)
        return cell
        
    }
    
}

struct company {
    let photo : UIImage
    let name : String
}
