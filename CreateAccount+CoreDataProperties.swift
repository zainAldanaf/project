//
//  CreateAccount+CoreDataProperties.swift
//  project
//
//  Created by Zain Aldanaf on 21/12/2022.
//
//

import Foundation
import CoreData


extension CreateAccount {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CreateAccount> {
        return NSFetchRequest<CreateAccount>(entityName: "CreateAccount")
    }

    @NSManaged public var useremail: String?
    @NSManaged public var password: String?

}

extension CreateAccount : Identifiable {

}
