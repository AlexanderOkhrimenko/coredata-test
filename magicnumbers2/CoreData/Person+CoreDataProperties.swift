//
//  Person+CoreDataProperties.swift
//  magicnumbers2
//
//  Created by xander on 02.05.2018.
//  Copyright © 2018 xander. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var arraynum: Int16
    @NSManaged public var number: Int16

}
