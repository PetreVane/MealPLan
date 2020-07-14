//
//  ButtonWithCounter.swift
//  MealPlan
//
//  Created by Petre Vane on 30/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State private var orangeCounter = 0
    @State private var greenCounter = 0
    @State private var blueCounter = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("\(orangeCounter + greenCounter + blueCounter)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
            
            Spacer(minLength: 10)
            
            HStack {
                ButtonWithCounter(backgroundColor: .orange, counter: $orangeCounter)
                ButtonWithCounter(backgroundColor: .green, counter: $greenCounter)
                ButtonWithCounter(backgroundColor: .blue, counter: $blueCounter)
            }.padding(.all, 30)
        }
    }
}

struct ButtonWithCounter: View {
    
    var backgroundColor: Color
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Button(action: { self.counter += 1 }, label: {
                Text("\(counter)")
                    .padding()
                    .background(backgroundColor)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .font(.system(size: 40, weight: .bold, design: .rounded))
            })
        }
    }
}

struct ButtonWithCounter_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MainView()
        }
    }
}
