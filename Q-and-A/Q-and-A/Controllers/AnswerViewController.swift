//
//  AnswerViewController.swift
//  Q-and-A
//
//  Created by morse on 4/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet var questionTextLabel: UILabel!
    @IBOutlet var askerTextLabel: UILabel!
    @IBOutlet var answererTextField: UITextField!
    @IBOutlet var answerTextField: UITextView!
    
    
    var questionController: QuestionController?
    var question: Question?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let answer = answerTextField.text, let answerer = answererTextField.text, !answer.isEmpty, !answerer.isEmpty else { return }
        
        guard let question = question else { return }
        
        questionController?.updateQuestion(question, answer: answer, answerer: answerer)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func updateViews() {
        guard let question = question else { return }
        
        askerTextLabel.text = "Asked by: \(question.asker)"
        questionTextLabel.text =
            question.questionText
        
        if let unwrappedAnswerer = question.answerer, let unwrappedAnswer = question.answer {
            answererTextField.text = unwrappedAnswerer
            answerTextField.text = unwrappedAnswer
        }
    }
}
