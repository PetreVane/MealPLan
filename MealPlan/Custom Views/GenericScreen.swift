//
//  GenericScreen.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

enum TimeOfDay {
    case breakfast
    case lunch
    case dinner
    
    var description: String {
        switch self {
            case .breakfast: return "Breakfast"
            case .lunch: return "Lunch"
            case .dinner: return "Dinner"
        }
    }
}

/// Generic view that initializes several CustomVStackSubview's with title and label content
struct GenericScreen: View {
    
    var timeOfDay: TimeOfDay
    
    @State private var breakfast = ["Proteins": false, "Grains" : false, "Fruits" : false]
    @State private var lunch = ["Proteins" : false, "Grains" : false, "Fruits" : false, "Vegetables" : false, "Fat" : false]
    @State private var dinner = ["Proteins" : false, "Grains" : false, "Fruits" : false, "Vegetables" : false, "Salad" : false, "Fat" : false]
   
    
    @State private var pickerSelection: String = ""
    @State private var customBinding = false
    
    var body: some View {
        
        VStack {
            switch timeOfDay {
            case .breakfast: //BreakfastView()
                let breakfastKeys = getDictionaryKeys(breakfast)
                List {
                    ForEach(breakfastKeys.indices, id: \.self) { index in

                        let key = breakfastKeys[index]
                        let breakfastBinding = Binding(
                            get: { getDictionaryValue(breakfast, forKey: key) },
                            set: { updateDictionaryValues(breakfast, forKey: key, withValue: $0)})
                        CustomVStackSubview(rowName: key, isChecked: breakfastBinding)
                    }
                }
                
            case .lunch: LunchView()
//                let lunchKeys = getDictionaryKeys(lunch)
//                ForEach(lunchKeys.indices, id: \.self) { index in
//
//                    let key = lunchKeys[index]
//                    let lunchBinding = Binding(
//                        get: { getDictionaryValue(lunch, forKey: key)},
//                        set: { updateDictionaryValues(lunch, forKey: key, withValue: $0)})
//                    CustomVStackSubview(rowName: lunchKeys[index], isChecked: lunchBinding)
//                }
            case .dinner: DinnerView()
//                let dinnerKeys = getDictionaryKeys(dinner)
//                ForEach(dinnerKeys.indices, id: \.self) { index in
//                    let key = dinnerKeys[index]
//                    let dinnerBinding = Binding(
//                        get: { getDictionaryValue(dinner, forKey: key)},
//                        set: { updateDictionaryValues(dinner, forKey: key, withValue: $0)})
//                    CustomVStackSubview(rowName: dinnerKeys[index], isChecked: dinnerBinding)
//                }
            }
        }
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
            case breakfast: breakfast = localDictCopy
            case lunch: lunch = localDictCopy
            case dinner: dinner = localDictCopy
            default: print("Default case")
        }
    }
}


/// Contains one filled circle (point) and one Text view
struct CustomVStackSubview: View {
    
    var customFont = "Avenir Next"
    var rowName: String

    @Binding var isChecked: Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            HStack(alignment: .center, spacing: 50) {
                
                Image(systemName: isChecked ? "checkmark.shield.fill" : "checkmark.shield")
                    .antialiased(true)
                    .font(.system(size: 35, weight: .thin, design: .rounded))
                    .foregroundColor( isChecked ? .green : .black)
                Text(rowName)
                    .font(.custom(customFont, size: 20))
                    .fontWeight(.thin)
                Spacer(minLength: 5)
                
            }
            .padding(.all, 10)
        }
        .padding(.all, 15)
        .onTapGesture {
            isChecked.toggle()
            userTapped()
        }
    }
    
    private func userTapped() {
        print("User has tapped \(rowName)")
    }
}

struct GenericScreen_Previews: PreviewProvider {

    static var previews: some View {
        GenericScreen(timeOfDay: TimeOfDay.lunch)
    }
}
