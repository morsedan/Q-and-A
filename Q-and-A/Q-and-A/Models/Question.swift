//
//  Question.swift
//  Q-and-A
//
//  Created by morse on 4/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let questionText: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(questionText: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.questionText = questionText
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
