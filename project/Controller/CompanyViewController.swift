//
//  CompanyViewController.swift
//  project
//
//  Created by Zain Aldanaf on 08/12/2022.
//

import UIKit

class CompanyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
  
    @IBOutlet weak var companyCollectionView:UICollectionView!
    
    var arrcompany = [Company]()
    var company : Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyCollectionView.delegate = self
        companyCollectionView.dataSource = self
        companyCollectionView.register(UINib(nibName:"CompanyViewControllerCell", bundle: nil), forCellWithReuseIdentifier: "CompanyViewControllerCell")

        arrcompany.append(Company(photo: UIImage(named: "Image")!, name: "Azad"))
        arrcompany.append(Company(photo: UIImage(named: "Image-1")!, name: "BluSkay"))
        arrcompany.append(Company(photo: UIImage(named: "Image-2")!, name: "Ora"))
        arrcompany.append(Company(photo: UIImage(named: "Image-3")!, name: "Gulf Sothebys"))
        arrcompany.append(Company(photo: UIImage(named: "image-4")!, name: "Moqawalat"))
        arrcompany.append(Company(photo: UIImage(named: "image-5")!, name: "CBRE Group"))
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrcompany.count
      }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CompanyViewControllerCell", for: indexPath) as! CompanyViewControllerCell
        
        let data = arrcompany[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "CompanyViewControllerCell") as? CompanyViewController{
            
            vc.company = arrcompany[indexPath.row]
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
    
   
        
      
    
    
}

