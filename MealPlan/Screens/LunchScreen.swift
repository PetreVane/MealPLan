//
//  LunchScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct LunchScreen: View {
    var customFont = "Avenir Next"
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Spacer(minLength: 15)
                GenericScreen(title: "Lunch", firstRow: ("Proteins", "Type your protein intake here"), secondRow: ("Grains", "Type your grains intake here"), thirdRow: ("Vegetables", "Type your vegetables intake here"), fourthRow: ("Fruits", "Type your fruits intake here"), fifthRow: ("Fat", "Type your fats intake here"))
                
                Spacer(minLength: 50)
                
                CustomButton(title: "Save Lunch") {
                    print("Saving lunch details now ..")
                }
            }
        }
    }
}

struct LunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LunchScreen()
    }
}
