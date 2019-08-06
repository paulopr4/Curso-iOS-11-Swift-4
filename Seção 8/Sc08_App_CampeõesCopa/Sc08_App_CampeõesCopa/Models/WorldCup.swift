//
//  WorldCup.swift
//  Sc08_App_CampeõesCopa
//
//  Created by paulopr4 on 03/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

struct WorldCup: Codable {
    
    let year : Int
    let country: String
    let winner: String
    let vice: String
    let winnerScores: String
    let viceScore: String
    let matches: [Match]
    
    }

struct Match: Codable {
    let stage: String
    let games: [Game]
}

struct Game: Codable {
    let home: String
    let away: String
    let score: String
    let date: String
}
