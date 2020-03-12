//
//  SignleHabbit.swift
//  HabitTrack_1
//
//  Created by Даниил Бабин on 17.02.2020.
//  Copyright © 2020 Babin Daniil. All rights reserved.
//

import UIKit

class SingleHabit: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()

    init(name:String){
        self.itemName = name as NSString
    }
}
