//
//  BreakfastView.swift
//  MealPlan
//
//  Created by Petre Vane on 23/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct BreakfastView: View {
    
   @State private var testBreakfast = ["Proteins": false, "Grains" : false, "Fruits" : false]
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    let breakfastKeys = getDictionaryKeys(testBreakfast)
                    ForEach(breakfastKeys.indices, id: \.self) { index in
                        
                        let key = breakfastKeys[index]
                        let breakfastBinding = Binding(
                            get: { getDictionaryValue(testBreakfast, forKey: key) },
                            set: { updateDictionaryValues(testBreakfast, forKey: key, withValue: $0)})
                        NavigationLink(destination: MultipleSelectionList(items: FoodIntake.Fruits.fruits)) {
                            CustomVStackSubview(rowName: key, isChecked: breakfastBinding)
                        }
                    }
                }
            }
            CustomButton(title: "Save breakfast") {
                print("Saving brakfast details now...")
            }.buttonStyle(CustomButtonStyle())
        }

    }
    
    func getDictionaryKeys(_ dictionary: Dictionary<String, Bool>) -> [String] {
        var temp: [String] = []
        for element in dictionary.keys {
            temp.append(element)
        }
        return temp
    }
    
    func updateDictionaryValues(_ dictionary: Dictionary<String, Bool>, forKey key: String, withValue value: Bool) {
        var localDictCopy = dictionary
        localDictCopy.updateValue(value, forKey: key)
        
        switch dictionary {
            case testBreakfast: testBreakfast = localDictCopy
            default: print("Default case")
        }
    }
    
    func getDictionaryValue(_ dictionary: Dictionary<String, Bool>, forKey key: String) -> Bool {
        return dictionary[key]!
    }
}

struct TestBreakfastView_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastView()
    }
}
