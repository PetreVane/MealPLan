//
//  MultipleSelectionRow.swift
//  MealPlan
//
//  Created by Petre Vane on 14/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct MultipleSelectionList: View {
    var items: [String] = ["Apples", "Pears", "Grapes"]
    @State var selections: [String] = []
    
    var body: some View {
        List {
            ForEach(self.items, id: \.self) { item in
                MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
    }
}


struct MultipleSelectionRow_Previews: PreviewProvider {
        
    static var previews: some View {
        MultipleSelectionList()
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
