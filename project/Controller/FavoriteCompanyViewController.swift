//
//  FavoriteCompanyViewController.swift
//  project
//
//  Created by Zain Aldanaf on 21/12/2022.
//

import UIKit

class FavoriteCompanyViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    

}
