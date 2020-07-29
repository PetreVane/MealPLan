//
//  LunchView.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct LunchView: View {
    
    @State private var testLunch = ["Proteins" : false, "Grains" : false, "Fruits" : false, "Vegetables" : false, "Fat" : false]
    @State private var isOn = false
    var lunchEssentials = ["Proteins":FoodIntake.Proteins.proteins, "Grains": FoodIntake.Grains.grains, "Fruits": FoodIntake.Fruits.fruits, "Vegetables": FoodIntake.Vegetables.vegetables, "Fat": FoodIntake.Fats.fats]
    
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    let lunchKeys = getDictionaryKeys(testLunch)
                    ForEach(lunchKeys.indices, id: \.self) { index in
                        
                        let key = lunchKeys[index]
                        let lunchBinding = Binding(
                            get: { getDictionaryValue(testLunch, forKey: key)},
                            set: { updateDictionaryValues(testLunch, forKey: key, withValue: $0)})
                        NavigationLink(destination: MultipleSelectionList(items: lunchEssentials[key]!)) {
                            CustomVStackSubview(rowName: lunchKeys[index], isChecked: lunchBinding)
                        }
                    }
                }
            }
            CustomButton(title: "Save Lunch") {
                print("Saving lunch details now ..")
            }.buttonStyle(CustomButtonStyle())
        }.padding(.bottom)
    }
    
    func getDictionaryKeys(_ dictionary: Dictionary<String, Bool>) -> [String] {
        var temp: [String] = []
        for element in dictionary.keys {
            temp.append(element)
        }
        return temp
    }

    func getDictionaryValue(_ dictionary: Dictionary<String, Bool>, forKey key: String) -> Bool {
        return dictionary[key]!
    }
    
    func updateDictionaryValues(_ dictionary: Dictionary<String, Bool>, forKey key: String, withValue value: Bool) {
        var localDictCopy = dictionary
        localDictCopy.updateValue(value, forKey: key)

        switch dictionary {
            case testLunch: testLunch = localDictCopy
            default: print("Default case")
        }
    }
}

struct LunchView_Previews: PreviewProvider {
    static var previews: some View {
        LunchView()
    }
}
