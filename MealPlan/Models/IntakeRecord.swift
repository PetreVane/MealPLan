//
//  IntakeRecord.swift
//  MealPlan
//
//  Created by Petre Vane on 29/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation


struct IntakeRecord {
    
    var date = Date()
    var timeOfDay: String // eg. breakfast or dinner
    var proteins: Proteins
    var grains: Grains
    var fruits: Fruits
    var vegetables: Vegetables?
    var salad: String?
    var fats: Fats?
    
    
    /// Contains a selection of common proteins consumed during the day and a dictionary that holds user selected proteins and quantity
    struct Proteins {
    
    }
    
    struct Grains {
        
    }
    
    struct Fruits {
        
    }
    
    struct Vegetables {
    
    }
    
    struct Fats {
        
    }
}

