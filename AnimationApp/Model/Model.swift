//
//  Model.swift
//  AnimationApp
//
//  Created by Кирилл Саталкин on 06.11.2023.
//

import Foundation

struct SettingView {
    
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    static func getSetting() -> SettingView {
        
        let dataStore = DataStore.shared
        
        let preset = dataStore.preset
        let curve = dataStore.curve
        let force = dataStore.forse
        let duration = dataStore.duration
        let delay = dataStore.delay
        
  
        return SettingView(preset: preset.description, curve: curve.description, force: force.count, duration: duration.count, delay: delay.count)
    }
    
}
