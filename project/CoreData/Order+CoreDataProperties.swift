//
//  Order+CoreDataProperties.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: String?
    @NSManaged public var city: String?
    @NSManaged public var area: String?
    @NSManaged public var company: String?
    @NSManaged public var buildingSpace: String?
    @NSManaged public var roomNo: String?
    @NSManaged public var floorNo: String?
    @NSManaged public var cillingHight: String?
    @NSManaged public var map: String?
    @NSManaged public var photo: String?

}

extension Order : Identifiable {

}
