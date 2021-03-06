//
//  CommentTableViewCell.swift
//  RPComment
//
//  Created by Abhinay Darla on 4/27/17.
//  Copyright © 2017 Abhinay Darla. All rights reserved.
//

import UIKit
import Firebase

class CommentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblComment: UILabel!
    var rpCommentObj: cls_RPComment!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCommentCell(_ comment: cls_RPComment) {
        rpCommentObj = comment
        lblComment.text = rpCommentObj.commentText
    }

}
