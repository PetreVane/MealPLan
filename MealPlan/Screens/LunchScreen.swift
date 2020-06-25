//
//  LunchScreen.swift
//  Tracky
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct LunchScreen: View {
    var customFont = "Avenir Next"
    var body: some View {
        ScrollView {
            VStack {
                GenericScreen(title: "Lunch", firstRow: ("1 Protein", "Type your protein intake here"), secondRow: ("6 oz. Vegetables", "Type your vegetables intake here"), thirdRow: ("1 Fruit", "Type your Fruit intake here"))
                
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
