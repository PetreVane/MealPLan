//
//  FoodEssentials.swift
//  MealPlan
//
//  Created by Petre Vane on 29/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI
import Combine


class FoodEssentials {
    
    let proteins = loadProteins()
    let grains = loadGrains()
    let vegetables = loadVegetables()
    let fruits = loadFruits()
    let fats = loadFats()
    
    @State var isListComleted = false
    
    @State static private var nutrientsStorage: [Dictionary<String, Bool>] = [["Proteins": false], ["Grains" : false], ["Fruits" : false], ["Vegetables" : false], ["Fats" : false]]
    
    var listedElements = fetchDictionaryKeys(nutrientsStorage)
    
    
    static func loadProteins() -> [String] {
        return ["Yogurt", "Milk", "Eggs", "Cottage cheese", "Ricotta chese", "Unsweetened soy milk", "Unsweetened almond milk", "Unsweetened other nondairy milk (hemp,flax, etc)", "Tofu", "Hummus", "Soya granules", "Nuts (including nuts butter)", "Seeds", "Fish", "Shrimps or other shellfish", "Tofu", "Tempeh", "Beans",  "Lentils", "Hummus", "Shelled edamame", "Veggie burger", "Soy nuts (or dry roasted edamame)"]
    }
    
    static func loadGrains() -> [String] {
        return ["Pre-Cooked hot", "Dry cold or hot", "Potato", "Sweet potato", "Yam", "Rice", "Quinoa", "Millet", "Oatmeal", "Oat bran", "Cream of rice", "Shredded wheat", "Fiber one"]
    }
    
    static func loadFruits() -> [String] {
        return ["Apple", "Pear", "Orange", "Grapefruit", "Banana", "Peach", "Nectarine", "Plum", "Kiwi", "Persimmon", "Apricot", "Berries (all kinds)", "Grapes", "Pineapple", "Cherries", "Mango / Papaya", "Melon (all kinds)", "Fresh figs"]
    }
    
    static func loadVegetables() -> [String] {
        return ["Lettuce", "Broccoli", "Green beans", "Brussel sprouts", "Mushrooms", "Eggplant", "Tomatoes", "Peppers", "Onions", "Carrots", "Zucchini", "Yellow squash", "Artichoke hearts", "Beets", "Spinach", "Kale", "Swiss chard", "Colard greens", "Celery", "Bok choy", "Broccoli rabe", "Cabbage", "Dandelion greens", "Radicchio", "Jicama", "Watercress", "Turnip greens", "Beet greens", "Cucumber", "Tomatillo", "Cauliflower", "Snow peas", "Sugar snap peas", "Asparagus", "Garlic", "Spaghetti squash", "Leeks", "Radishes", "Peas", "Corn", "Parsnips", "Turnip/rutabaga/swede", "Winter squash (butternut, delicate, acorn, pumpkin)", "Stir fry", "Mix"]
    }
    
    static func loadFats() -> [String] {
        return ["Oil", "Butter", "Margarine", "Mayonnaise", "Salad dressing", "Tahini", "Nuts", "Nut butter", "Seeds", "Olives", "Avocado"]
    }
    
    static func fetchDictionaryKeys(_ collection: [Dictionary<String, Bool>]) -> [String] {
        var dictionaryKeys: [String] = []
        for element in collection {
            for key in element.keys {
                dictionaryKeys.append(key)
            }
        }
        return dictionaryKeys
    }
    
    static func createBinding(key: String) {
        var dictionaryKeys: [String] = []
        for element in nutrientsStorage {
            for key in element.keys {
                dictionaryKeys.append(key)
            }
        }
    }
    
    
    func createBinding(key: String, collection: [Dictionary<String, Bool>]) {
        
        for (index, element) in collection.enumerated() {
            for keyName in element.keys {
                if keyName == key {
                    if let value = collection[index][key] {
                        
                        _ = Binding(
                            get: { value },
                            set: { FoodEssentials.nutrientsStorage[index].updateValue($0, forKey: keyName)})
                        
                    }
                }
            }
        }
    }
}
