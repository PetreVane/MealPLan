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
    var firstRow: (title: String, placeholder: String)
    var secondRow: (title: String, placeholder: String)
    var thirdRow: (title: String, placeholder: String)
    var fourthRow: (title: String, placeholder: String)?
    var fifthRow: (title: String, placeholder: String)?

    // Bindings
    @Binding var firstTextField: String
    @Binding var secondTextField: String
    @Binding var thirdTextField: String
    @Binding var fourthTextField: String
    @Binding var fifthTextField: String
   
    
    
    var body: some View {
        
        VStack {
            VStack(alignment: .center, spacing: 35) {
                Text(title)
                    .font(.custom("Avenir Next", size: 35))
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
            }
            
            CustomVStackSubview(textViewValue: firstRow.title, textFieldPlaceholderValue: firstRow.placeholder, textFieldValue: $firstTextField)
            
            CustomVStackSubview(textViewValue: secondRow.title, textFieldPlaceholderValue: secondRow.placeholder, textFieldValue: $secondTextField)
            CustomVStackSubview(textViewValue:thirdRow.title, textFieldPlaceholderValue: thirdRow.placeholder, textFieldValue: $thirdTextField)
            
            if fourthRow != nil {
                CustomVStackSubview(textViewValue: fourthRow?.title ?? "nil", textFieldPlaceholderValue: fourthRow?.placeholder ?? "nil", textFieldValue: $fourthTextField)
            }
            
            if fifthRow != nil {
                CustomVStackSubview(textViewValue: fifthRow?.title ?? "nil", textFieldPlaceholderValue: fifthRow?.placeholder ?? "nil", textFieldValue: $fifthTextField)
            }
        }
    }
    
}

/// Contains one filled circle (point) and one Text view
struct CustomVStackSubview: View {
    
//    var requiredProperty: CustomVStackProtocol
    var textViewValue: String
    var textFieldPlaceholderValue: String
    var customFont = "Avenir Next"
    @Binding var textFieldValue: String
   
    
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
            
            CustomTextField(placeholderText: textFieldPlaceholderValue, textFieldValue: $textFieldValue)
            
            
        }.padding()
    }
}

struct GenericScreen_Previews: PreviewProvider {

    static var previews: some View {
        GenericScreen(title: "This is the title", firstRow: ("Proteins", "Protein intakes"), secondRow: ("Grains", "Grains intake"), thirdRow: ("Vegetables", "Vegetables intake"), fourthRow: ("Salad", "Salad intake"), fifthRow: ("Fat", "Fat intake"), firstTextField: .constant(" "), secondTextField: .constant(" "), thirdTextField: .constant(" "), fourthTextField: .constant(" "), fifthTextField: .constant(" "))
    }
}
