//
//  GenericScreen.swift
//  Tracky
//
//  Created by Petre Vane on 18/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

enum TimeOfDay {
    case breakfast
    case lunch
    case dinner
    
    var description: String {
        switch self {
            case .breakfast: return "Breakfast"
            case .lunch: return "Lunch"
            case .dinner: return "Dinner"
        }
    }
}


/// Contains one filled circle (point) and one Text view
struct CustomVStackSubview: View {
    
    var customFont = "Avenir Next"
    var rowName: String

    @Binding var isChecked: Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            HStack(alignment: .center, spacing: 50) {
                
                Image(systemName: isChecked ? "checkmark.shield.fill" : "checkmark.shield")
                    .antialiased(true)
                    .font(.system(size: 35, weight: .thin, design: .rounded))
                    .foregroundColor( isChecked ? .green : .black)
                Text(rowName)
                    .font(.custom(customFont, size: 20))
                    .fontWeight(.thin)
                Spacer(minLength: 5)
                
            }
            .padding(.all, 10)
        }
        .padding(.all, 15)
        .onTapGesture {
//            self.isChecked.toggle()
            self.userTapped()
        }
    }
    
    private func userTapped() {
        print("User has tapped \(rowName)")
    }
}

struct GenericScreen_Previews: PreviewProvider {

    static var previews: some View {
        CustomVStackSubview(rowName: "Test Name", isChecked: .constant(true))
    }
}
