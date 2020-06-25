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
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                GenericScreen(title: "Dinner", firstRow: ("1 Protein", "Type your protein intake here"), secondRow: ("6 oz. Vegetables", "Type your Vegetables intake here"), thirdRow: ("Type your Salad intake here", "Type your Salad intake here"))
                
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Circle()
                            .fixedSize()
                            .foregroundColor(.gray)
                        
                        Text("8 oz. Salad")
                            .font(.custom(customFont, size: 25))
                            .fontWeight(.thin)
                            .italic()
                    }
                    
                    CustomTextField(placeholderText: "Type your Salad intake here", customFont: customFont)
                }.padding()
                
                Spacer(minLength: 50)
                
                CustomButton(title: "Save dinner") {
                    print("Saving dinner details now ...")
                }
            }
        }
    }
}

struct DinnerScreen_Previews: PreviewProvider {
    static var previews: some View {
        DinnerScreen()
    }
}
