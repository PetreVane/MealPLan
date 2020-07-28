//
//  CustomPickerView.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomPickerView: View {
    
    typealias Label = String
    typealias Entry = String
    let data: [ (Label, [Entry]) ]
    @Binding var selection: [Entry]
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                ForEach(0..<data.count) { column in
                    Picker(data[column].0, selection: $selection[column]) {
                        ForEach(0..<data[column].1.count) { row in
                            Text(verbatim: data[column].1[row])
                                .tag(data[column].1[row])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width / CGFloat(self.data.count), height: geometry.size.height)
                    .clipped()
                }
            }
        }
    }
}

//struct CustomPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomPickerView()
//    }
//}
