//
//  CompanyViewControllerCell.swift
//  project
//
//  Created by Zain Aldanaf on 08/12/2022.
//

import UIKit
import CoreData

class CompanyViewControllerCell: UICollectionViewCell {
    
    @IBOutlet weak var lbCompanyLable: UILabel!
    @IBOutlet weak var imgCompanyPhoto: UIImageView!
    
    
    
    func setupCell(photo: UIImage ,name: String){
        imgCompanyPhoto.image = photo
        lbCompanyLable.text = name
    }
    
}
    
