//
//  DataManager.swift
//  AnimationApp
//
//  Created by Rasikon on 18.09.2020.
//

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    var names = ["fall", "shake", "pop", "flipX", "flipY", "morph"]
    
    var curves = ["easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine"]
    
}
