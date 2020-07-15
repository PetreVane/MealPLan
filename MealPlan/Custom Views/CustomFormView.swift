//
//  CustomFormView.swift
//  MealPlan
//
//  Created by Petre Vane on 14/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomFormView: View {
    
    @State var segmentedControllerIndex = 0
    @State private var isChecked = false
    
    // Maps a String to each of TimeOfDay (enum) cases
    var dayTime: Dictionary<String, TimeOfDay> = ["Breakfast": .breakfast, "Lunch": .lunch, "Dinner" : .dinner]
    // Contains a list of posible day time
    private var listOfDayTimePeriods = ["Breakfast", "Lunch", "Dinner"]
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Options", selection: $segmentedControllerIndex) {
                        ForEach(0 ..< listOfDayTimePeriods.count) { dayTime in
                            Text(listOfDayTimePeriods[dayTime]).tag(dayTime)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    GenericScreen(isChecked: $isChecked, timeOfDay: dayTime[listOfDayTimePeriods[segmentedControllerIndex]] ?? TimeOfDay.breakfast)
                }
                
                Section  { }
                
            }.navigationBarTitle("Food Intake")
        }
    }
}

struct CustomSegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        CustomFormView()
    }
}
