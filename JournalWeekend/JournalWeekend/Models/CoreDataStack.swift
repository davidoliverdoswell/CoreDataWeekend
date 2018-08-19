//
//  CoreDataStack.swift
//  JournalWeekend
//
//  Created by Lambda-School-Loaner-11 on 8/19/18.
//  Copyright © 2018 David Doswell. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    // MARK: - Single instance for app
    
    static let shared = CoreDataStack()
    
    lazy var container: NSPersistentContainer = {
        
        // MARK: Load persistent stores
        let container = NSPersistentContainer(name: "JournalWeekend")
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Error: \(error)")
            }
        }
        return container
    }()
    
    // MARK: - Single context instance for container
    var mainContext: NSManagedObjectContext {
        return container.viewContext
    }
    
}
