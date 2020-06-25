//
//  BreakfastScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct BreakfastScreen: View {
    var customFont = "Avenir Next"
    var body: some View {
        ScrollView {
            VStack {
                GenericScreen(title: "Breakfast", firstRow: ("1 Protein", "Type your protein intake here"), secondRow: ("1 Breakfast grain", "Type your grain intake here"), thirdRow: ("1 Fruit", "Type your fruit intake here"))
                
                Spacer(minLength: 50)
                
                CustomButton(customFont: customFont, title: "Save breakfast") {
                    print("Saving brakfast details now...")
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
