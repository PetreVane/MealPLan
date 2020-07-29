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
    
    // Maps a String to each of TimeOfDay (enum) cases
    var dayTime: Dictionary<String, TimeOfDay> = ["Breakfast": .breakfast, "Lunch": .lunch, "Dinner" : .dinner]
    // Contains a list of posible day time
    private var listOfDayTimePeriods = ["Breakfast", "Lunch", "Dinner"]
    
    var body: some View {
        Form {
            Section {
                Picker("Options", selection: $segmentedControllerIndex) {
                    ForEach(listOfDayTimePeriods.indices, id:\.self) { dayTime in
                        Text(self.listOfDayTimePeriods[dayTime]).tag(dayTime)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}


struct CustomSegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        CustomFormView()
    }
}
