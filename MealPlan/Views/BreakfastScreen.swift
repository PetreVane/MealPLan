//
//  BreakfastScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct BreakfastScreen: View {
    
    var body: some View {
        VStack {
            BreakfastView()
            CustomButton(title: "Save breakfast") {
                print("Saving brakfast details now...")
            }.buttonStyle(CustomButtonStyle())
        }
    }
}

struct BreakfastScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastScreen()
    }
}
