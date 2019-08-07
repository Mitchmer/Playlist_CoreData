import Foundation
import CoreData

class CoreDataStack {
    static let container: NSPersistentContainer = {
        // initialize Persistent Container, creates a managed object model with namme
        let container = NSPersistentContainer(name: "PlaylistCoreData")
        
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext{
        return container.viewContext
    }
}
