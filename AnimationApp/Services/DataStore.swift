//
//  DataStore.swift
//  AnimationApp
//
//  Created by Кирилл Саталкин on 07.11.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    

    let preset = [
        "fadeIn",
        "flipY",
        "flipX",
        "shake",
        "fadeOutIn",
        "squeezeLeft",
        
    ]
    
    let curve = [
       "easeOutQuint",
       "easeInQuad",
       "easeOutCirc",
       "easeInOutExpo",
       "easeInCirc",
       "easeOutExpo"
    ]
    
    let forse = [
        1.21,
        1.13,
        1.12,
        1.30,
        1.05,
        1.02
    ]
    
    let duration = [
        1.24,
        0.85,
        0.87,
        1.28,
        1.14,
        0.91
        ]
    
    let delay = [
        1.00
        ]
    
    private init() {}
}
