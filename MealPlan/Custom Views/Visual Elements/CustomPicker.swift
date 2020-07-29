//
//  CustomPicker.swift
//  MealPlan
//
//  Created by Petre Vane on 29/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomPicker: View {
    @State private var selection = 0
    @State private var showGrams = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $showGrams, label: { Text("Oz")}).padding()
            HStack {
                Picker("Select", selection: $selection) {
                    ForEach(0..<5) { index in
                        Text("\(index)")
                    }
                    
                Picker("Select", selection: $selection) {
                    ForEach(0..<50) { index in
                        Text("\(index)")
                    }
                }
            }
        }
    }
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .padding(10)
        
        
       
        
        
    }
}

struct TestPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomPicker()
    }
}
