//
//  CoreDataHandler.swift
//  magicnumbers2
//
//  Created by xander on 02.05.2018.
//  Copyright © 2018 xander. All rights reserved.
//

import UIKit
import CoreData

class CoreDataHandler: NSObject {
    
    private class func getContext()-> NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
    //    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        return appDelegate.persistentContainer.viewContext
    }
    
   class func saveObject (arraynum: String, date: String, name: String, number: String  ) -> Bool {
        let context = getContext()
        
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
    
        manageObject.setValue(arraynum, forKey: "arraynum")
        manageObject.setValue(date, forKey: "date")
        manageObject.setValue(name, forKey: "name")
        manageObject.setValue(number, forKey: "number")
    
    do {
        try context.save()
        return true
    } catch  {
        return false
    }
}
    
    class func  fetchObject() -> [Person]? {
      let context = getContext()
        var person:[Person]? = nil
        do {
            person = try context.fetch(Person.fetchRequest())
            return person
        } catch {
            return person
        }
        
    }

}
