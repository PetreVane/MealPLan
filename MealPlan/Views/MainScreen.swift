////
////  MainScreen.swift
////  MealPlan
////
////  Created by Petre Vane on 16/06/2020.
////  Copyright © 2020 Petre Vane. All rights reserved.
////

import SwiftUI

struct MainScreen: View {
    
    var body: some View {
        TabView {
            MainSubView()
                .tabItem {
                    Image(systemName: "sun.haze.fill").renderingMode(.original)
                    Text(verbatim: "Daily records")
                }.tag(0)
                
        
            DetailedView()
                .tabItem {
                    Image(systemName: "star.circle.fill").renderingMode(.original)
                    Text(verbatim: "Your progress")
            }.tag(1)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

struct BottomStack: View {
    
    @State private var showBreakfastScreen = false
    @State private var showLunchScreen = false
    @State private var showDinnerScreen = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Button(action: {
                self.showBreakfastScreen.toggle()
            }) { CustomButtonTextView(title: "Breakfast") }
            .sheet(isPresented: $showBreakfastScreen) { BreakfastScreen() }
            .buttonStyle(CustomButtonStyle())
            
            Button(action: {
                self.showLunchScreen.toggle()
            }) { CustomButtonTextView(title: "Lunch    ")}
            .sheet(isPresented: $showLunchScreen) { LunchScreen() }
            .buttonStyle(CustomButtonStyle())
            
            Button(action: {
                self.showDinnerScreen.toggle()
            }) { CustomButtonTextView(title: "Dinner   ")}
            .sheet(isPresented: $showDinnerScreen) { DinnerScreen() }
            .buttonStyle(CustomButtonStyle())
        }
    }
}

struct TopStackView: View {
    
    private var customFont = "Avenit Next"
    private var date = Date()
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Spacer(minLength: 10)
            Text("Today is \(dateFormatter.string(from: date))")
                .font(.custom(customFont, size: 20))
                .fontWeight(.ultraLight)
                .padding()
                .border(Color.black, width: 0.3)
            
            Text("Hi beatiful")
                .fontWeight(.light)
                .padding()
                .font(.custom(customFont, size: 25))
        }
    }
}

struct MainSubView: View {
    
    private var customFont = "Avenir Next"
    @State private var isSaved: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 25) {
                // Date and hello message
                Spacer(minLength: 10)
                
                TopStackView()
            
                HStack {
                    Button(action: {
                            self.isSaved.toggle()
                            print("Saving your height")}) {
                        
                        Image(systemName: isSaved ? "checkmark.rectangle.fill" : "checkmark.rectangle")
                                .font(.system(size: 45))
                                .foregroundColor(isSaved ? .green : .gray)
                        
                    }.buttonStyle(AdditionalButtonStyle())
                }
                
                // Middle textView
                Text("Your meal plan")
                    .font(.custom(customFont, size: 35))
                    .fontWeight(.ultraLight)
                
                BottomStack()
            }
        }
    }
}
