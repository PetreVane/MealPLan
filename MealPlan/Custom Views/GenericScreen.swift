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

/// Generic view that initializes several CustomVStackSubview's with title and label content
struct GenericScreen: View {
    
    @Binding var isChecked: Bool
    var timeOfDay: TimeOfDay
    
    var title: String = ""
    var breakfast = ["Proteins", "Grains", "Fruits"]
    var lunch = ["Proteins", "Grains", "Fruits", "Vegetables", "Fat"]
    var dinner = ["Proteins", "Grains", "Fruits", "Vegetables","Salad" ,"Fat"]
    
    var body: some View {
        
        VStack {
            
            switch timeOfDay {
            case .breakfast:
                    ForEach(breakfast.indices) { index in
                        CustomVStackSubview(textViewValue: breakfast[index], isChecked: $isChecked)
                    }
            case .lunch:
                    ForEach(lunch.indices) { index in
                        CustomVStackSubview(textViewValue: lunch[index], isChecked: $isChecked)
                    }
            case .dinner:
                    ForEach(dinner.indices) { index in
                        CustomVStackSubview(textViewValue: dinner[index], isChecked: $isChecked)
                    }
                }
            }
        }
    }

/// Contains one filled circle (point) and one Text view
struct CustomVStackSubview: View {
    
    var customFont = "Avenir Next"
    var textViewValue: String

    @Binding var isChecked: Bool
    
   
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            HStack(alignment: .center, spacing: 50) {
                
                Image(systemName: isChecked ? "checkmark.shield.fill" : "checkmark.shield")
                    .antialiased(true)
                    .font(.system(size: 35, weight: .thin, design: .rounded))
                    .foregroundColor( isChecked ? .green : .black)
                
                
                Text(textViewValue)
                    .font(.custom(customFont, size: 25))
                    .fontWeight(.thin)
                
                Spacer(minLength: 5)
            }
            .padding(.all, 10)
            .border(Color.black, width: 0.5)
            
        }.padding(.all, 15)
    }
}

//struct GenericScreen_Previews: PreviewProvider {
//
//    static var previews: some View {
//        
//        GenericScreen(isChecked: .constant(false), timeOfDay: .constant(TimeOfDay.breakfast))
//    }
//}
