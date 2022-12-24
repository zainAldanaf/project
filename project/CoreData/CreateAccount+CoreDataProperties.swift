//
//  CreateAccount+CoreDataProperties.swift
//  project
//
//  Created by Zain Aldanaf on 23/12/2022.
//
//

import Foundation
import CoreData


extension CreateAccount {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CreateAccount> {
        return NSFetchRequest<CreateAccount>(entityName: "CreateAccount")
    }

    @NSManaged public var password: String?
    @NSManaged public var useremail: String?
    @NSManaged public var userName: String?

}

extension CreateAccount : Identifiable {

}
