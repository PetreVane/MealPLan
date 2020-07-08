//
//  BreakfastCoordinator.swift
//  MealPlan
//
//  Created by Petre Vane on 29/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation

struct BreakfastCoordinator {
    
    var breakfast: FoodIntake
    var breakfastRecords: [FoodIntake] = []
    
    init(breakfast: FoodIntake) {
        self.breakfast = breakfast
        updateBreakfastRecords(self.breakfast)
    }
    
    mutating func updateBreakfastRecords(_ breakfast: FoodIntake) {
        breakfastRecords.append(breakfast)
        print("Breakfast has just been updated ...")
    }
}
