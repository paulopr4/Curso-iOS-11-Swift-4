//
//  QuotesManager.swift
//  Sc07_App_Pensamentos
//
//  Created by paulopr4 on 30/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

class QuotesManager {
    
    var quotes : [Quote] = []
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try? Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData!)
    }
    
    func getRandomQuote() -> Quote {
    let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    
    }
    
}
