//
//  Item.swift
//  HelloFirebase
//
//  Created by Daniel Valente on 01/06/19.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase

class Item {
    var title:String
    var addedBy:String
    var completed:Bool
    var ref: DatabaseReference?
    
    init(title:String, addedBy:String, completed:Bool, ref:DatabaseReference?) {
        self.title = title
        self.addedBy = addedBy
        self.completed = completed
        self.ref = ref
    }

    func toAnyObject() -> Any {
        return ["title":title, "addedBy":addedBy, "completed":completed]
    }
}
