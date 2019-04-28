//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by morse on 4/27/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet var answerThisLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { return }
        
        answerThisLabel.text = "Can you answer this?"
        askedByLabel.text = question.asker
        questionLabel.text = question.questionText
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
