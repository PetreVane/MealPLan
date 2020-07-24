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
        
        VStack {
            BreakfastView()
            CustomButton(customFont: customFont, title: "Save breakfast") {
                print("Saving brakfast details now...")
            }
        }
    }
}

struct BreakfastScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastScreen()
    }
}
