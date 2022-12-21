//
//  OrderData+CoreDataProperties.swift
//  project
//
//  Created by Zain Aldanaf on 21/12/2022.
//
//

import Foundation
import CoreData


extension OrderData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<OrderData> {
        return NSFetchRequest<OrderData>(entityName: "OrderData")
    }

    @NSManaged public var area: String?
    @NSManaged public var buildingSpace: String?
    @NSManaged public var cillingHight: String?
    @NSManaged public var city: String?
    @NSManaged public var company: String?
    @NSManaged public var floorNo: String?
    @NSManaged public var map: String?
    @NSManaged public var name: String?
    @NSManaged public var photo: Data?
    @NSManaged public var price: String?
    @NSManaged public var roomNo: String?

}

extension OrderData : Identifiable {

}
