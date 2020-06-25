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
    @State private var textFieldValue: String = ""
    
    
    var body: some View {
        TextField(placeholderText, text: $textFieldValue)
            .font(.custom(customFont, size: 12))
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}
