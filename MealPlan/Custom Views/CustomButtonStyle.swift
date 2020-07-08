//
//  CustomButtonStyle.swift
//  MealPlan
//
//  Created by Petre Vane on 30/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    private var customFont = "Avenir Next"
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
            .padding()
            .border(Color.gray, width: 1)
            .scaleEffect(configuration.isPressed ? 0.7 : 1, anchor: .center)
    }

}

struct AdditionalButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
            .scaleEffect(configuration.isPressed ? 1 : 1.3, anchor: .center)
    }
}
