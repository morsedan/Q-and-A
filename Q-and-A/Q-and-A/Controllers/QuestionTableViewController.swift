//
//  QuestionTableViewController.swift
//  Q-and-A
//
//  Created by morse on 4/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    let questionController = QuestionController()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)

        guard let questionCell = cell as? QuestionTableViewCell else { return cell }
        
        let question = questionController.questions[indexPath.row]
        questionCell.question = question
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskQuestionSegue" {
            guard let questionDetailVC = segue.destination as? SubmitQuestionViewController else {
                
                print("QuestionViewController was not instantiated")
                return
            }
            
            questionDetailVC.questionController = questionController
        } else if segue.identifier == "AnswerSegue" {
            guard let answerVC = segue.destination as? AnswerViewController else { return }
            guard let cell = sender as? QuestionTableViewCell else { return }
            
            answerVC.questionController = questionController
            answerVC.question = cell.question
        }
    }
}
