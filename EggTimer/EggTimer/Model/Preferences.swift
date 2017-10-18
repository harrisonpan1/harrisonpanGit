//
//  Preferences.swift
//  EggTimer
//
//  Created by 潘谦 on 10/18/17.
//  Copyright © 2017 潘谦. All rights reserved.
//

import Foundation
struct Preferences {
    
    // 1
    var selectedTime: TimeInterval {
        get {
            // 2
            let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            // 3
            return 360
        }
        set {
            // 4
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }
    
}

