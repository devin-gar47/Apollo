//
//  Entries.swift
//  garrettD_Final_Project
//
//  Created by Devin Garrett on 3/17/20.
//  Copyright © 2020 Devin Garrett. All rights reserved.
//

import Foundation

class Entry {
    var title:String
    var mood:String
    var message:String
    
    init(title:String, mood:String, message:String) {
        self.title = title
        self.mood = mood
        self.message = message
    }
}
