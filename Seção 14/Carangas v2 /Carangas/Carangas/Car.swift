//
//  Car.swift
//  Carangas
//
//  Created by paulopr4 on 25/08/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import Foundation

class Car: Codable {
    
    var _id: String?
    var brand: String = ""
    var gasType: Int = 0
    var name: String = ""
    var price: Double = 0.0
    
    var gas: String{
        switch gasType {
        case 0:
            return "Flex"
        case 1:
            return "Alcool"
        default:
            return "Gasolina"
            
        }
    }
    
    
    
    
}

struct Brand: Codable {
    let fipe_name: String
}
