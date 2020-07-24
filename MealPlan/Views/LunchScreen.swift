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
        
        VStack {
            LunchView()
            CustomButton(title: "Save Lunch") {
                print("Saving lunch details now ..")
                
            }
        }
    }
}

struct LunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LunchScreen()
    }
}
