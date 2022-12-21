//
//  TableViewCell.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func setupCellOrder(imageO :UIImage , nameO :String , placeO:String , priceO:String){
        img.image=imageO
        name.text=nameO
        place.text=placeO
        price.text=priceO
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
    


