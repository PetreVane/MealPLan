//
//  BreakfastView.swift
//  MealPlan
//
//  Created by Petre Vane on 23/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct BreakfastView: View {
    
    private var model = FoodEssentials()
    private let elementsList = ["Proteins", "Grains", "Fruits"]
    
    @State private var proteinsSaved = false
    @State private var grainsSaved = false
    @State private var fruitsSaved = false
    
    var body: some View {
        
        VStack {
            NavigationView {
                List {
                    ForEach(self.elementsList.indices) { index in
                        
                        if self.elementsList[index] == Nutrients.proteins {
                            NavigationLink(destination: MultipleSelectionList(items: self.model.proteins, isItemSaved: self.$proteinsSaved)) {
                                CustomVStackSubview(rowName: Nutrients.proteins, isChecked: self.$proteinsSaved)
                            }
                            
                        }
                        
                        if self.elementsList[index] == Nutrients.grains {
                            NavigationLink(destination: MultipleSelectionList(items: self.model.grains, isItemSaved: self.$grainsSaved)) {
                                CustomVStackSubview(rowName: Nutrients.grains, isChecked: self.$grainsSaved)
                            }
                        }
                        
                        if self.elementsList[index] == Nutrients.fruits {
                            NavigationLink(destination: MultipleSelectionList(items: self.model.fruits, isItemSaved: self.$fruitsSaved)) {
                                CustomVStackSubview(rowName: Nutrients.fruits, isChecked: self.$fruitsSaved)
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
            }
        }
    }
}

struct TestBreakfastView_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastView()
    }
}
