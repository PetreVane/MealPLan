//
//  DetailedView.swift
//  MealPlan
//
//  Created by Petre Vane on 25/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

// This is for trying things
struct DetailedView: View {
    var body: some View {
        VStack {
            HeaderView() 
            
            HStack {
                PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                ZStack {
                    PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    Text("Best for designer")
                        .padding(5)
                        .background(Color.yellow)
                        .foregroundColor(.gray)
                        .offset(x: 0, y: 87)
                }
            }
            .padding()
            
            VStack {
                ZStack {
                    PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                    
                    Image(systemName: "wand.and.rays")
                        .font(.title)
                        .offset(x: 0, y: -70)
                        .foregroundColor(.white)
                    
                    Text("Perfect for teams with 20 members")
                        .padding(10)
                        .background(Color.yellow)
                        .foregroundColor(.white)
                        .offset(x: 0, y: 90)
                }
                
            }.padding()
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.green)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.green)
            }
            Spacer()
        }.padding()
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack {
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
