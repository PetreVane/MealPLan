//
//  CustomText.swift
//  MealPlan
//
//  Created by Petre Vane on 25/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CustomButtonTextView: View {

    var title: String
    var customFont = "Avenir Next"
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .font(.custom(customFont, size: 15))
            .foregroundColor(.gray)
//            .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
//            .padding()
//            .border(Color.gray, width: 1)
    }
}

struct CustomText_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonTextView(title: "Test")
    }
}
