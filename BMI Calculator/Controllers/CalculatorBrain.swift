//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Prosper Evergreen on 27.06.2020.
//  Copyright © 2020 proSPEC. All rights reserved.
//

//import Foundation

struct CalculatorBrain {
    var height: Float?
    var weight: Int?
    var bmi = BMI()
    
    mutating func setHeight(value: Float) {
        height = Float(String(format: "%.1f", value))!
    }
    
    mutating func setWeight(value: Float) {
        weight = Int(String(format: "%.0f", value))!
    }
    
    mutating func calcBMI() {
        bmi.calcBMI(weight: weight!, height: height!)
    }
    
}
