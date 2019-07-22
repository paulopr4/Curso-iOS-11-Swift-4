//
//  Quiz.swift
//  App_SwiftQuiz
//
//  Created by paulopr4 on 15/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

class Quiz {
    
    let question : String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
        
    }
    
    deinit {
        print("liberou Quiz da memoria")
    }
    
}

