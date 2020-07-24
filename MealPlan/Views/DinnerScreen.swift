//
//  DinnerScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct DinnerScreen: View {
    
    var customFont = "Avenir Next"
    
    var body: some View {
        VStack {
            DinnerView()
            CustomButton(title: "Save dinner") {
                print("Saving dinner details now ...")
            }
        }
    }
}

struct DinnerScreen_Previews: PreviewProvider {
    static var previews: some View {
        DinnerScreen()
    }
}
