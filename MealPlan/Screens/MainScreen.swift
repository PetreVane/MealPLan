//
//  MainScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 16/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    @State var date = Date()
    @State private var isActive: Bool = false
    private var customFont = "Avenir Next"
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 15) {
                        Text("Today is \(dateFormatter.string(from: date))")
                            .font(.custom(customFont, size: 20))
                            .fontWeight(.ultraLight)
                            .padding(.all, -25)
                            .border(Color.black, width: 0.3)
                        
                        Text("Hi beatiful")
                            .fontWeight(.light)
                            .padding()
                            .font(.custom(customFont, size: 25))
                        
                        // Weight textfield & button
                        HStack {
                            CustomTextField(placeholderText: "Your weight today")
                                .fixedSize()
                            
                            Button(action: { print("Saving your weight")}) {
                                Text("Update weight")
                                    .font(.custom(customFont, size: 15))
                                    .fontWeight(.ultraLight)
                                    .cornerRadius(35)
                                    .padding(EdgeInsets(top: 6, leading: 10, bottom: 6, trailing: 10))
                                    .border(Color.gray, width: 0.5)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        // Height textfield & button
                        HStack {
                            CustomTextField(placeholderText: "Your height today")
                                .fixedSize()
                            
                            Button(action: { print("Saving your height")}) {
                                Text("Update height")
                                    .font(.custom(customFont, size: 15))
                                    .fontWeight(.ultraLight)
                                    .cornerRadius(35)
                                    .padding(EdgeInsets(top: 6, leading: 10, bottom: 6, trailing: 10))
                                    .border(Color.gray, width: 0.5)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        Text("Your meal plan")
                            .font(.custom(customFont, size: 35))
                            .fontWeight(.ultraLight)
                        
                        // Links
                        NavigationLink(destination: BreakfastScreen()) {
                            CustomTextView(title: "Breakfast")
                        }
                        
                        NavigationLink(destination: LunchScreen()) {
                            CustomTextView(title: "Lunch    ")
                        }
                        
                        NavigationLink(destination: DinnerScreen()) {
                            CustomTextView(title: "Dinner   ")
                        }
                    }
                }
            }
        .statusBar(hidden: false)
        .navigationBarBackButtonHidden(true)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
