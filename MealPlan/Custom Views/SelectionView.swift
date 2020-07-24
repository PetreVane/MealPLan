//
//  SelectionView.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct SelectionView: View {
    
    @State var segmentedControllerIndex = 0
    @State var isShown = true
    
    private let views = [BreakfastView(), LunchView(), DinnerView()] as [Any]
    private let listOfDayTimePeriods = ["Breakfast", "Lunch", "Dinner"]
    
    var body: some View {
        VStack {
            Section {
                if isShown {
                    Picker(selection: $segmentedControllerIndex, label: Text("Label")) {
                        ForEach(listOfDayTimePeriods.indices, id:\.self) { index in
                            Text(listOfDayTimePeriods[index])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                } else {
                    Text("No picker")
                }

            }.padding()
            
            DinnerView()
        }
    }
    
    func selectView<V: View>(index: Int) -> V {
        return views[index] as! V
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
