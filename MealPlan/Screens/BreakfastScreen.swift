//
//  BreakfastScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct BreakfastScreen: View {
    
    @State private var proteins: String = ""
    @State private var grains: String = ""
    @State private var fruits: String = ""
    
    var customFont = "Avenir Next"
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Spacer(minLength: 15)
                GenericScreen(title: "Breakfast", firstRow: ("Proteins", "Type your protein intake here"), secondRow: ("Grains", "Type your grain intake here"), thirdRow: ("Fruits", "Type your fruit intake here"))
                
                Spacer(minLength: 50)
                
                CustomButton(customFont: customFont, title: "Save breakfast") {
                    print("Saving brakfast details now...")
//                    CustomTextField.printInput()
                }
            }
        }
    }
}

struct BreakfastScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastScreen()
    }
}
