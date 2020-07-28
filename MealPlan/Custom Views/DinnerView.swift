//
//  DinnerView.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct DinnerView: View {
    
    @State private var testDinner = ["Proteins" : false, "Grains" : false, "Fruits" : false, "Vegetables" : false, "Salad" : false, "Fat" : false]
    @State var isFullScreen = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    let dinnerKeys = getDictionaryKeys(testDinner)
                    ForEach(dinnerKeys.indices, id: \.self) { index in
                        let key = dinnerKeys[index]
                        let dinnerBinding = Binding(
                            get: { getDictionaryValue(testDinner, forKey: key)},
                            set: { updateDictionaryValues(testDinner, forKey: key, withValue: $0)})
                        
                        NavigationLink(destination: MultipleSelectionList(items: FoodIntake.Fats.fats)) {
                            CustomVStackSubview(rowName: dinnerKeys[index], isChecked: dinnerBinding)
                        }
                    }
                }
            }
            CustomButton(title: "Save dinner") {
                print("Saving dinner details now ...")
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
            case testDinner: testDinner = localDictCopy
            default: print("Default case")
        }
    }
}

struct DinnerView_Previews: PreviewProvider {
    static var previews: some View {
        DinnerView()
    }
}
