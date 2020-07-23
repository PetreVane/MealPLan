//
//  CustomButton.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    
    var customFont = "Avenir Next"
    @State var title: String
    @State var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            self.action()
        }) {
            CustomButtonTextView(title: title)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Test") {
            print("Test pressed")
        }
    }
}

