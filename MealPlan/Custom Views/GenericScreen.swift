//
//  GenericScreen.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

/// Generic view that initializes several CustomVStackSubview's with title and label content
struct GenericScreen: View {
    var title: String
    var firstRow: (String, String)
    var secondRow: (String, String)
    var thirdRow: (String, String)
    var fourthRow: (String, String)?
    var fifthRow: (String, String)?
       
    var body: some View {
        
        VStack {
            VStack(alignment: .center, spacing: 35) {
                Text(title)
                    .font(.custom("Avenir Next", size: 35))
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
            }
            
            CustomVStackSubview(textViewValue: firstRow.0, textFieldPlaceholderValue: firstRow.1)
            CustomVStackSubview(textViewValue: secondRow.0, textFieldPlaceholderValue: secondRow.1)
            CustomVStackSubview(textViewValue:thirdRow.0, textFieldPlaceholderValue: thirdRow.1)
            
            if fourthRow != nil {
                 CustomVStackSubview(textViewValue: fourthRow?.0 ?? "nil", textFieldPlaceholderValue: fourthRow?.1 ?? "nil")
            }
            
            if fifthRow != nil {
                CustomVStackSubview(textViewValue: fifthRow?.0 ?? "nil", textFieldPlaceholderValue: fifthRow?.1 ?? "nil")
            }
        }
    }
}

/// Contains one filled circle (point) and one Text view
struct CustomVStackSubview: View {
    
    var textViewValue: String
    var textFieldPlaceholderValue: String
    var customFont = "Avenir Next"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Circle()
                    .fill(Color.gray)
                    .fixedSize()
                
                Text(textViewValue)
                    .font(.custom(customFont, size: 25))
                    .fontWeight(.thin)
            }
            
            CustomTextField(placeholderText: textFieldPlaceholderValue)
            
        }.padding()
    }
}

struct GenericScreen_Previews: PreviewProvider {
    static var previews: some View {
//        GenericScreen(title: "Testing", firstRow: ("Proteins", "Protein intakes"), secondRow: ("Grains", "Grains intake"), thirdRow: ("Vegetables", "Vegetables intake"), fourthRow: ("Salad", "Salad intake"), fifthRow: ("Fat", "Fat intake"))
        GenericScreen(title: "Test", firstRow: ("Proteins", "Protein intakes"), secondRow: ("Grains", "Grains intakes"), thirdRow: ("Vegetables", "Vegetables intakes"), fourthRow: ("Fat", "Fat intake"), fifthRow: nil)

    }
}
