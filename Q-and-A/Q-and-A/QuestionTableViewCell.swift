//
//  QuestionCellTableViewCell.swift
//  Q-and-A
//
//  Created by morse on 4/25/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet var askedByLabel: UILabel!
    @IBOutlet var qustionLabel: UILabel!
}
