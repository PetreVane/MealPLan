//
//  FoodIntake.swift
//  MealPlan
//
//  Created by Petre Vane on 29/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation


struct FoodIntake: Identifiable {
    
    var id = UUID()
    var proteins: Proteins
    var grains: Grains
    var fruits: Fruits
    var vegetables: Vegetables?
    var salad: String?
    var fats: Fats?
    
    
    /// Contains a selection of common proteins consumed during the day and a dictionary that holds user selected proteins and quantity
    struct Proteins {
        
        init(proteinContent: Dictionary<Int, [String]>) {
            self.content = proteinContent
        }
        
        // holds the total quantity of proteins and a selection of proteins consumed
        var content: Dictionary<Int, [String]>
        
        // holds a selection of common protein sources
        static let breakfastProteins = ["Yogurt", "Milk", "Eggs", "Cottage cheese", "Ricotta chese", "Unsweetened soy milk", "Unsweetened almond milk", "Unsweetened other nondairy milk (hemp,flax, etc)", "Tofu", "Hummus", "Soya granules", "Nuts (including nuts butter", "Seeds"]
        
        static let lunchAndDinnerProteins = ["Fish", "Shrimps or other shellfish", "Tofu", "Tempeh", "Beans",  "Lentils", "Hummus", "Shelled edamame", "Veggie burger", "Soy nuts (or dry roasted edamame"]
    }
    
    struct Grains {
        
        init(grainsContent: Dictionary<Int, [String]>) {
            self.content = grainsContent
        }
        
        var content: Dictionary<Int, [String]>
        
        static let breakfastGrains = ["Pre-Cooked Hot", "Dry Cold or hot", "Potato", "Sweet potato", "Yam", "Rice", "Quinoa", "Millet", "Oatmeal", "Oat bran", "Cream of rice", "Shredded wheat", "Fiber one"]
    }
    
    struct Fruits {
        
        init(fruitsContent: Dictionary<Int, [String]>) {
            self.content = fruitsContent
        }
        
        var content: Dictionary<Int, [String]>
        
        
        static let fruits = ["Apple", "Pear", "Orange", "Grapefruit", "Banana", "Peach", "Nectarine", "Plum", "Kiwi", "Persimmon", "Apricot", "Berries (all kinds)", "Grapes", "Pineapple", "Cherries", "Mango / Papaya", "Melon (all kinds)", "Fresh figs"]
    }
    
    struct Vegetables {
        
        init(vegetablesContent: Dictionary<Int,[String]>) {
            self.content = vegetablesContent
        }
        
        var content: Dictionary<Int, [String]>
        
        static let vegetables = ["Lettuce", "Broccoli", "Green beans", "Brussel sprouts", "Mushrooms", "Eggplant", "Tomatoes", "Peppers", "Onions", "Carrots", "Zucchini", "Yellow squash", "Artichoke hearts", "Beets", "Spinach", "Kale", "Swiss chard", "Colard greens", "Celery", "Bok choy", "Broccoli rabe", "Cabbage", "Dandelion greens", "Radicchio", "Jicama", "Watercress", "Turnip greens", "Beet greens", "Cucumber", "Tomatillo", "Cauliflower", "Snow peas", "Sugar snap peas", "Asparagus", "Garlic", "Spaghetti squash", "Leeks", "Radishes", "Peas", "Corn", "Parsnips", "Turnip/rutabaga/swede", "Winter squash (butternut, delicate, acorn, pumpkin", "Stir fry", "Mix"]
    }
    
    struct Fats {
        
        init(fatsContent: Dictionary<Int, [String]>) {
            self.content = fatsContent
        }
        
        var content: Dictionary<Int, [String]>
        static let fats = ["Oil", "Butter", "Margarine", "Mayonnaise", "Salad dressing", "Tahini", "Nuts", "Nut butter", "Seeds", "Olives", "Avocado"]
    }
}

//struct Example {
//    init() {
//        print("Example is initialized")
//    }
//    var proteins = FoodIntake.Proteins(proteinContent: [300:["Cheese", "Eggs"]])
//    var grains = FoodIntake.Grains(grainsContent: [250: ["Some grains here"]])
//    var vegetables = FoodIntake.Vegetables(vegetablesContent: [275: ["Onins", "Tomatos", "Potateos"]])
//    var fruits = FoodIntake.Fruits(fruitsContent: [75: ["Water melon"]])
//    var fats = FoodIntake.Fats(fatsContent: [83: ["Cedar", "Almonds butter"]])
//    
//}

