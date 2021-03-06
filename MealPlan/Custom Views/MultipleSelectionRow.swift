//
//  MultipleSelectionRow.swift
//  MealPlan
//
//  Created by Petre Vane on 14/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct MultipleSelectionList: View {
    
    var items: [String]
    
    @State private var nutrientSelections: [String] = []
    @State private var selectedQuantity = 0
    @Binding var isItemSaved: Bool
    
    @State private var data: [(String, [String])] = [
       
        ("One", Array(0...499).map { "\($0)" }),
        ("Two",  Array(arrayLiteral: "Select unit", "Oz", "Grams").map { "\($0)"}),
    ]
    @State var quantitySelection: [String] = [0, 0].map { "\($0)" }
    
    var body: some View {
        VStack {
            List {
                ForEach(self.items, id: \.self) { item in
                    MultipleSelectionRow(title: item, isSelected: self.nutrientSelections.contains(item)) {
                        if self.nutrientSelections.contains(item) {
                            self.nutrientSelections.removeAll(where: { $0 == item })
                        }
                        else {
                            self.nutrientSelections.append(item)
                        }
                    }//.padding()
                }
            }
           
            Text("\(nutrientSelections.description)")
                        
            VStack {
                CustomPickerView(data: data, selection: $quantitySelection).frame(height: 100).padding()
            }
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding()
            
            
            CustomButton(title: "Save selection"){
                print("Saving brakfast details now...")
                self.isItemSaved.toggle()
                
            }.buttonStyle(CustomButtonStyle())
        }.padding(.bottom)
    }
}


struct MultipleSelectionRow_Previews: PreviewProvider {
        
    static var previews: some View {
        MultipleSelectionList(items: FoodEssentials.loadProteins(), isItemSaved: .constant(false))
    }
}

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Text(title)
                if isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        })
    }
}
