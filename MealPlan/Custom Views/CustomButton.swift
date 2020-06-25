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
            Text(title)
                .fontWeight(.ultraLight)
                .font(.custom(customFont, size: 15))
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
                .padding()
                .border(Color.gray, width: 1)
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
