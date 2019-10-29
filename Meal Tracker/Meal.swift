//
//  Meal.swift
//  Meal Tracker
//
//  Created by Frank Solleveld on 29/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import Foundation
struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]){
        self.name = name
        self.food = food
    }
}
