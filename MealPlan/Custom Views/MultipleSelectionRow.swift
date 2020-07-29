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
    
    @State private var selections: [String] = []
    @State private var selectedQuantity = 0
    
    @State private var data: [(String, [String])] = [
        ("One", Array(0...9).map { "\($0)" }),
        ("Two", Array(0...9).map { "\($0)" }),
        ("Three", Array(0...9).map { "\($0)" })
    ]
    @State var selection: [String] = [0, 0, 0].map { "\($0)" }
    
    var body: some View {
        VStack {
            List {
                ForEach(self.items, id: \.self) { item in
                    MultipleSelectionRow(title: item, isSelected: selections.contains(item)) {
                        if self.selections.contains(item) {
                            self.selections.removeAll(where: { $0 == item })
                        }
                        else {
                            self.selections.append(item)
                        }
                    }
                }
            }
//            Text("You've selected \(selection)")
            CustomPickerView(data: data, selection: $selection).frame(height: 300)
        }
    }
}


struct MultipleSelectionRow_Previews: PreviewProvider {
        
    static var previews: some View {
        MultipleSelectionList(items: FoodIntake.Proteins.proteins)
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
