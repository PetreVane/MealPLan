//
//  CircleImage.swift
//  Tracky
//
//  Created by Petre Vane on 19/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
     //TODO:  replace Text this with an Image
    var body: some View {
        
        VStack {
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                )
            Spacer(minLength: 5)
            HStack {
                Image(systemName: "trash")
                    .padding(3)
                    .background(Color.red)
                    .font(.largeTitle)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
                Text("Delete")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
            .shadow(radius: 25)
            
        }.padding(.all, 10)
        
    }
}

extension CircleImage {
    
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
