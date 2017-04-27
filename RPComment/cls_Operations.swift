//
//  cls_Operations.swift
//  RPComment
//
//  Created by Abhinay Darla on 4/27/17.
//  Copyright © 2017 Abhinay Darla. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class cls_Operations: NSObject {
    
    var rpCommentsObj = [cls_RPComment]()
    
    func storeCommentToDatabase(_ commentTextView: UITextView) {
        
        let commentID = FIRDatabase.database().reference().child(NSUUID().uuidString)
        let commentText = commentTextView.text
        FIRDatabase.database().reference().child(commentID.key).setValue([
            "comment":commentText])
    }
}
