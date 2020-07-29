//
//  NavigationTest.swift
//  MealPlan
//
//  Created by Petre Vane on 23/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct NavigationTest: View {
    
    var body: some View {
        
        let first = Restaurant(name: "Joe's Original")
        let restaurants = [first]
        
        return NavigationView {
            List(restaurants) { restaurant in
                NavigationLink(destination: DetailView()) {
                    RestaurantRow(restaurant: restaurant)
                }
                
            }.navigationBarTitle(Text("Bar title"))
        }
    }
}

struct NavigationTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTest()
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        Text(restaurant.name)
    }
}
