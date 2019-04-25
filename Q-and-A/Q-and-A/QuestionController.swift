//
//  QuestionController.swift
//  Q-and-A
//
//  Created by morse on 4/25/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func createQuestion(withText text: String, andAsker asker: String) {
        let question = Question(question: text, asker: asker)
        
        questions.append(question)
    }
    
    func updateQuestion(_ question: Question, answer: String, answerer: String) {
        
        if let questionIndex = questions.firstIndex(of: question) {
            
            questions[questionIndex].answer = answer
            questions[questionIndex].answerer = answerer
        }
        
    }
    
    func deleteQuestion(_ question: Question) {
        
        if let questionIndex = questions.firstIndex(of: question) {
            questions.remove(at: questionIndex)
        }
    }
}
