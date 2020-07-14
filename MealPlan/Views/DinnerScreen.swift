//
//  DinnerScreen.swift
//  MealPlan
//
//  Created by Petre Vane on 17/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI

struct DinnerScreen: View {
    
    @State private var proteins = ""
    @State private var grains = ""
    @State private var vegetables = ""
    @State private var salad = ""
    @State private var fat = ""
    
    
    let foodIntakeController = FoodIntakeController.sharedInstance
    
    
    var customFont = "Avenir Next"
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Spacer(minLength: 15)
                
                GenericScreen(title: "Dinner", firstRow: ("Proteins", "Type your protein intake here"), secondRow: (title: "Grains", placeholder: "Type Grains intake here"), thirdRow: ("Vegetables", "Type your Vegetables intake here"), fourthRow: ("Salad", "Type your Salad intake here"), fifthRow: ("Fat", "Type yoir Fat intake here"), firstTextField: $proteins, secondTextField: $grains, thirdTextField: $vegetables, fourthTextField: $salad, fifthTextField: $fat)
                
                Spacer(minLength: 50)
                
                CustomButton(title: "Save dinner") {
                    print("Saving dinner details now ...")
                    self.saveFoodIntake()
                }
            }
        }
    }
    
    func saveFoodIntake() {
        let foodIntake = FoodIntake(proteins: proteins, grains: grains, fruits: "", vegetables: vegetables, salad: salad, fats: fat)
        foodIntakeController.add(foodIntake)
        foodIntakeController.checkStatus()
    }
}

struct DinnerScreen_Previews: PreviewProvider {
    static var previews: some View {
        DinnerScreen()
    }
}
