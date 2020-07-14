//
//  FoodIntakeController.swift
//  MealPlan
//
//  Created by Petre Vane on 13/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation

class FoodIntakeController {
    
    static var sharedInstance = FoodIntakeController()
    var meals: [FoodIntake] = []
    
    func add(_ foodIntake: FoodIntake) {
        print("Adding food intake ...")
        meals.append(foodIntake)
    }
    
    func checkStatus() {
        print("Your current food intake accounts for \(meals.count) meals")
    }
}
