//
//  MarvelAPI.swift
//  HeroisMarvel
//
//  Created by paulopr4 on 18/08/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import Foundation
import SwiftHash
import Alamofire

class MarvelAPI {
    
    static private let basepath = "https://gateway.marvel.com/v1/public/characters?"
    static private let privatekey = "d0f34ede6fdeb2a72af2aa9cd76c8c72d5d34c98"
    static private let publickey = "294d1540fef988141ff41817f0afa5e3"
    static private let limit = 50
    
    class func loadHeros(name: String?, page: Int = 0, onComplete: @escaping (MarvelInfo?) -> Void) {
        let offset = page * limit
        let startWish: String
        if let name = name, !name.isEmpty {
            startWish = "nameStartWith=\(name.replacingOccurrences(of: "  ", with: ""))&"
        } else {
            startWish = " "
        }
        let url = basepath + "offset=\(offset)&limit=\(limit)&" + startWish + getCredentials()
        print(url)
        
        Alamofire.request(url).responseJSON { (response) in
            guard let data = response.data,
                  let marvelInfo = try? JSONDecoder().decode(MarvelInfo.self, from: data),
                MarvelInfo.code == 200 else {
                    onComplete(nil)
                    return
            }
            onComplete(marvelInfo)
        }
        
    }
    private class func getCredentials() -> String {
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(ts+privatekey+publickey).lowercased()
        return "ts=\(ts)&apikey=\(MarvelAPI.publickey)&hash=\(hash)"
    }
    
    
    
}






