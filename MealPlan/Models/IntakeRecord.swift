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
    var breakfast: Breakfast
    var lunch: Lunch
    var dinner: Dinner
}

struct Breakfast {
    isCompleted: Bool
    var proteins: Proteins
    var grains: Grains
    var fruits: Fruits
}

struct Lunch {
    isCompleted: Bool
    var proteins: Proteins
    var grains: Grains
    var vegetables: Vegetables
    var fruits: Fruits
    var fats: Fats
}

struct Dinner {
    isCompleted: Bool
    var proteins: Proteins
    var grains: Grains
    var vegetables: Vegetables
    var fruits: Fruits
    var fats: Fats
}

struct Proteins {
    var elements: [String]
    var quantity: Int
    var units: String
}

struct Grains {
    var elements: [String]
    var quantity: Int
    var units: String
}

struct Fruits {
    var elements: [String]
    var quantity: Int
    var units: String
}

struct Vegetables {
    var elements: [String]
    var quantity: Int
    var units: String
}

struct Fats {
    var elements: [String]
    var quantity: Int
    var units: String
}


