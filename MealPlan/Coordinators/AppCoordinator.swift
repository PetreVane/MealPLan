//
//  FlowController.swift
//  Tracky
//
//  Created by Petre Vane on 25/06/2020.
//  Copyright © 2020 Petre Vane. All rights reserved.
//

import Foundation


class AppCoordinator {
    
    static var shared = AppCoordinator()
    var hasAcceptedChallenge = false
    private var userDefaults = UserDefaults.standard
    
    func acceptChallenge(_ accepted: Bool) {
        
        if accepted {
            hasAcceptedChallenge = true
        }
    }
}
