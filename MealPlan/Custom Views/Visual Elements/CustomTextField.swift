//
//  CustomTextField.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI


struct CustomTextField: View {
    
    var placeholderText: String
    var customFont = "Avenir Next"
    @Binding var textFieldValue: String
    
    
    var body: some View {
        TextField(placeholderText, text: $textFieldValue)
            .font(.custom(customFont, size: 12))
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

//struct CustomTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack(alignment: .center, spacing: 15) {
//            CustomTextField(placeholderText: "PlaceHolder text", textFieldValue: <#Binding<String>#>)
//            CustomButton(title: "Save textField value") {
//                let texty = CustomTextField(placeholderText: "Test")
//                texty.printInput()
//            }
//        }
//    }
//}
