//
//  FormExample.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct FormExample: View {
    
    @State private var enableLogging = false
    @State private var selectedColor = 0
    @State private var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedColor, label: Text("Select a color")) {
                    ForEach(0 ..< colors.count) {
                        Text(self.colors[$0]).tag($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Toggle(isOn: $enableLogging) {
                    Text("Enable Logging")
                }
                
                Button(action: {
                    // activate theme!
                }) {
                    Text("Save changes")
                }
            }.navigationBarTitle("Settings")
        }
    }
}

struct FormExample_Previews: PreviewProvider {
    static var previews: some View {
        FormExample()
    }
}
