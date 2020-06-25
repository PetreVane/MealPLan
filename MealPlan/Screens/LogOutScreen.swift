//
//  LogOutScreen.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct LogOutScreen: View {
    var customFont = "Avenir Next"
    var body: some View {
        VStack(alignment: .center, spacing: 35) {
            
            CustomButton(customFont: customFont, title: "Show evolution graph") {
                print("Logging user out now ...")
            }
        }
    }
}

struct LogOutScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogOutScreen()
    }
}
