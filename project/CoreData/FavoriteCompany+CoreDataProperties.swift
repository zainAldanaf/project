//
//  FavoriteCompany+CoreDataProperties.swift
//  project
//
//  Created by Zain Aldanaf on 24/12/2022.
//
//

import Foundation
import CoreData


extension FavoriteCompany {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteCompany> {
        return NSFetchRequest<FavoriteCompany>(entityName: "FavoriteCompany")
    }

    @NSManaged public var companyNameFav: String?

}

extension FavoriteCompany : Identifiable {

}
