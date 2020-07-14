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
    var proteins: String
    var grains: String
    var fruits: String
    var vegetables: String?
    var salad: String?
    var fats: String?
}

struct Proteins {
    
    static let breakfastProteins = ["Yogurt", "Milk", "Eggs", "Cottage cheese", "Ricotta chese", "Unsweetened soy milk", "Unsweetened almond milk", "Unsweetened other nondairy milk (hemp,flax, etc)", "Tofu", "Hummus", "Soya granules", "Nuts (including nuts butter", "Seeds"]
    
    static let lunchAndDinnerProteins = ["Fish", "Shrimps or other shellfish", "Tofu", "Tempeh", "Beans",  "Lentils", "Hummus", "Shelled edamame", "Veggie burger", "Soy nuts (or dry roasted edamame"]
}

struct Grains {
    static let breakfastGrains = ["Pre-Cooked Hot", "Dry Cold or hot", "Potato", "Sweet potato", "Yam", "Rice", "Quinoa", "Millet", "Oatmeal", "Oat bran", "Cream of rice", "Shredded wheat", "Fiber one"]
}

struct Fruits {
    static let fruits = ["Apple", "Pear", "Orange", "Grapefruit", "Banana", "Peach", "Nectarine", "Plum", "Kiwi", "Persimmon", "Apricot", "Berries (all kinds)", "Grapes", "Pineapple", "Cherries", "Mango / Papaya", "Melon (all kinds)", "Fresh figs"]
}

struct Vegetables {
    static let vegetables = ["Lettuce", "Broccoli", "Green beans", "Brussel sprouts", "Mushrooms", "Eggplant", "Tomatoes", "Peppers", "Onions", "Carrots", "Zucchini", "Yellow squash", "Artichoke hearts", "Beets", "Spinach", "Kale", "Swiss chard", "Colard greens", "Celery", "Bok choy", "Broccoli rabe", "Cabbage", "Dandelion greens", "Radicchio", "Jicama", "Watercress", "Turnip greens", "Beet greens", "Cucumber", "Tomatillo", "Cauliflower", "Snow peas", "Sugar snap peas", "Asparagus", "Garlic", "Spaghetti squash", "Leeks", "Radishes", "Peas", "Corn", "Parsnips", "Turnip/rutabaga/swede", "Winter squash (butternut, delicate, acorn, pumpkin", "Stir fry", "Mix"]
}

struct Fats {
    static let fats = ["Oil", "Butter", "Margarine", "Mayonnaise", "Salad dressing", "Tahini", "Nuts", "Nut butter", "Seeds", "Olives", "Avocado"]
}


