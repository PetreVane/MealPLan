//
//  SelectableList.swift
//  MealPlan
//
//  Created by Petre Vane on 28/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct SelectableList: View {
    @State private var selection: Set<String> = []
        
        var body: some View {
            VStack {
                EditButton()
                
                Text("Selected: \(self.selection.joined(separator: ", "))")

                List(selection: $selection) {
                    Text("Row 1").tag("A")
                    Text("Row 2").tag("B")
                    Text("Row 3").tag("C")
                }
            }
        }

}

struct SelectableList_Previews: PreviewProvider {
    static var previews: some View {
        SelectableList()
    }
}
