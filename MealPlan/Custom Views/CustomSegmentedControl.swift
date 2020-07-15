//
//  CustomFormView.swift
//  MealPlan
//
//  Created by Petre Vane on 14/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomFormView: View {
    @State private var selection: [String] = []
    @State var timeSelection = 0
    
    private var timeOfDay = ["Breakfast", "Lunch", "Dinner"]
    
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    Picker("Options", selection: $timeSelection) {
                        ForEach(0 ..< timeOfDay.count) { index in
                            Text(self.timeOfDay[index]).tag(index)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    NavigationLink("\(timeOfDay[timeSelection])", destination: MultipleSelectionList())

                }
                
//                Text("You've selected: \(timeOfDay[timeSelection])")
            }.navigationBarTitle("Form")
        }
    }
}

struct CustomSegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        CustomFormView()
    }
}
