//
//  GenericScreen.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct GenericScreen: View {
    var title: String
    var firstRow: (String, String)
    var secondRow: (String, String)
    var thirdRow: (String, String)
    
    var customFont = "Avenir Next"
    var body: some View {
        
        VStack {
            VStack(alignment: .center, spacing: 35) {
                Text(title)
                    .font(.custom(customFont, size: 35))
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
                Spacer()
            }
            
            CustomVStackSubview(textViewValue: firstRow.0, textFieldPlaceholderValue: firstRow.1)
            CustomVStackSubview(textViewValue: secondRow.0, textFieldPlaceholderValue: secondRow.1)
            CustomVStackSubview(textViewValue:thirdRow.0, textFieldPlaceholderValue: thirdRow.1)
        }
    }
}

struct GenericScreen_Previews: PreviewProvider {
    static var previews: some View {
        GenericScreen(title: "Breakfast", firstRow: ("1 Protein", "Type your Protein intake here"), secondRow: ("1 Breakfast grain", "Type your Grain intake here"), thirdRow: ("1 Fruit", "Type your Fruit intake here"))
    }
}

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
                    .italic()
            }
            
            CustomTextField(placeholderText: textFieldPlaceholderValue)
            
        }.padding()
    }
}
