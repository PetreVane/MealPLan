//
//  CustomText.swift
//  MealPlan
//
//  Created by Petre Vane on 25/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomTextView: View {

    var title: String
    var customFont = "Avenir Next"
    var body: some View {
        Text(title)
            .fontWeight(.ultraLight)
            .font(.custom(customFont, size: 15))
            .foregroundColor(.gray)
            .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
            .padding()
            .border(Color.gray, width: 1)
    }
}
