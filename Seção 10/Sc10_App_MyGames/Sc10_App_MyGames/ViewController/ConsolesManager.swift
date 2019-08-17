//
//  ConsolesManager.swift
//  Sc10_App_MyGames
//
//  Created by paulopr4 on 14/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import CoreData

class ConsolesManager {
    
    static let shared = ConsolesManager()
    
    var consoles: [Console] = []
    
    func loadConsoles(with context: NSManagedObjectContext) {
        let fetchRequest: NSFetchRequest<Console> = Console.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            consoles = try context.fetch(fetchRequest)
        }catch {
            print(error.localizedDescription)
        }
        
    }
    
    func deleleConsole(index: Int, context: NSManagedObjectContext) {
        let console = consoles[index]
        context.delete(console)
        do {
            try context.save()
        }catch {
            print(error.localizedDescription)
        }
    }
    private init () {
        
    }
}
