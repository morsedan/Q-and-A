//
//  SubmitQuestionViewController.swift
//  Q-and-A
//
//  Created by morse on 4/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class SubmitQuestionViewController: UIViewController {
    
    var questionController: QuestionController?

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var questionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let asker = nameTextField.text, let questionText = questionTextView.text, !asker.isEmpty, !questionText.isEmpty else { return }
        
        questionController?.createQuestion(questionText: questionText, asker: asker)
        self.navigationController?.popViewController(animated: true)
    }
}
