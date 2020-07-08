//
//  FlowController.swift
//  MealPlan
//
//  Created by Petre Vane on 25/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import SwiftUI


class AppCoordinator {
    
    static var shared = AppCoordinator()
    var hasAcceptedChallenge = false
    private var userDefaults = UserDefaults.standard
    private var keyIdentifier = "ChallengeAccepted"
    
    func acceptChallenge(_ accepted: Bool) {
        
        if accepted {
            hasAcceptedChallenge = true
            userDefaults.set(true, forKey: keyIdentifier)
        }
    }
    
    func checkIfAccepted() -> Bool {
        guard let accepted = userDefaults.object(forKey: keyIdentifier) as? Bool else { return false }
        print("User has accepted challenge: \(accepted)")
        return accepted
    }
    
    func determineAppFlow() -> some View {
        print("Called determineAppFlow")
        @ViewBuilder
        var screen: some View {
            let challengeAccepted = checkIfAccepted()
            let startingScreen = challengeAccepted ? MainScreen() : MainScreen()
            startingScreen
        }
        return screen
    }
}
