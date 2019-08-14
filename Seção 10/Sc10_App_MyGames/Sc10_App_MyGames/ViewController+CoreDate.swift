//
//  ViewController+CoreDate.swift
//  Sc10_App_MyGames
//
//  Created by paulopr4 on 11/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return appDelegate.persistentContainer.viewContext
        
    }
}
