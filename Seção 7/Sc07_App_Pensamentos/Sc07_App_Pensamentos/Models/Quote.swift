//
//  Quote.swift
//  Sc07_App_Pensamentos
//
//  Created by paulopr4 on 30/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

struct Quote: Codable { // Encodable, DecoDable : É um protocolo onde nós implementamos quando queremos, que a nossa classe seja codifica em JSON
    // ou seja arquivo ou eu possa salvar ou persistir o dado.
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "😀" + quote + "😀"
    }
    
    var authorFormatted: String {
        return "😀" + author + "😀"
    }
}
