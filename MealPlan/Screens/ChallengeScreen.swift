//
//  LaunchScreen.swift
//  Tracky
//
//  Created by Petre Vane on 16/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI


struct ChallengeScreen: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 150) {
            
            Text("My meal plan")
                .font(.custom("Avenir Next", size: 55))
                .fontWeight(.ultraLight)
                .lineLimit(1)
                
            
            Button(action: {
                self.instantiateTabBar()

            }) {
                Text("Accept Challenge")
                    .font(.custom("Avenir Next", size: 25))
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                    .padding()
                    .border(Color.black)
            }
        }
    }
    
    func instantiateTabBar() {
        print("Tell coordinator to instantiate tabBar")
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        return ChallengeScreen()
    }
}
