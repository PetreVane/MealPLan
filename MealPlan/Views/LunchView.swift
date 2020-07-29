//
//  LunchView.swift
//  MealPlan
//
//  Created by Petre Vane on 24/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct LunchView: View {
    
    private var model = FoodEssentials()
    private let elementsList = ["Proteins", "Grains", "Vegetables", "Fruits", "Fats"]
    
    @State private var proteinsSaved = false
    @State private var grainsSaved = false
    @State private var fruitsSaved = false
    @State private var vegetablesSaved = false
    @State private var fatsSaved = false
    
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
                        
                        if self.elementsList[index] == Nutrients.vegetables {
                            NavigationLink(destination: MultipleSelectionList(items: self.model.vegetables, isItemSaved: self.$vegetablesSaved)) {
                                CustomVStackSubview(rowName: Nutrients.vegetables, isChecked: self.$vegetablesSaved)
                            }
                        }
                        
                        if self.elementsList[index] == Nutrients.fats {
                            NavigationLink(destination: MultipleSelectionList(items: self.model.fats, isItemSaved: self.$fatsSaved)) {
                                CustomVStackSubview(rowName: Nutrients.fats, isChecked: self.$fatsSaved)
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
            }
        }
    }
}

struct LunchView_Previews: PreviewProvider {
    static var previews: some View {
        LunchView()
    }
}
