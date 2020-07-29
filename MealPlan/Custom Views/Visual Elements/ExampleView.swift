//
//  ExampleView.swift
//  MealPlan
//
//  Created by Petre Vane on 28/07/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct ExampleView: View {
    @ObservedObject private var model = Model()
    @State private var selectedId: UUID? = nil
       
    var body: some View {
        VStack {
            NavigationView {
                List(selection: $selectedId) {
                    ForEach(model.fruits) { itm in
                        Text(itm.name)
                            .tag(itm.id)
                    }
                }.navigationBarItems(trailing: EditButton())
            }
            Text("You've selected \(selectedName(id: selectedId))")
        }
    }
       
       func selectedName(id: UUID?) -> String {
           if let item = selectedItem(id: id) {
               return item.name
           } else {
               return "None"
           }
       }

       func selectedItem(id: UUID?) -> Item? {
           guard let id = id else { return nil }
           
           return model.fruits.first(where: { $0.id == id })
       }

}

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let color: Color
}

class Model: ObservableObject {
    @Published var fruits: [Item] = loadFruits()
    
    static func loadFruits() -> [Item] {
        return [
            Item(name: "Banana", image: "banana", color: .red),
            Item(name: "Apple", image: "apple", color: .orange),
            Item(name: "Peach", image: "peach", color: .green),
            Item(name: "Avocado", image: "avocado", color: .blue),
            Item(name: "Kiwi", image: "kiwi", color: .purple),
            Item(name: "Grapes", image: "grapes", color: .pink),
        ]
    }
}


struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
