//
//  Helper.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI


class Helper {
    
    var dictionary: Dictionary<String, Bool> = [:]
    
    func getDictionaryKeys(_ dictionary: Dictionary<String, Bool>) -> [String] {
        var temp: [String] = []
        for element in dictionary.keys {
            temp.append(element)
        }
        return temp
    }
    
     func updateDictionaryValues(_ collection: Dictionary<String, Bool>, forKey key: String, withValue value: Bool) {
        var localDictCopy = collection
        localDictCopy.updateValue(value, forKey: key)
        dictionary = localDictCopy
    }
    
     func getDictionaryValue(_ dictionary: Dictionary<String, Bool>, forKey key: String) -> Bool {
        return dictionary[key]!
    }
}
