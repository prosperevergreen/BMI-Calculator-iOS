//
//  BMI.swift
//  BMI Calculator
//
//  Created by Prosper Evergreen on 27.06.2020.
//  Copyright © 2020 proSPEC. All rights reserved.
//

import UIKit

struct BMI {
    var value: Float?
    var advice: String?
    var bgColor: UIColor?
    
    mutating func calcBMI(weight:Int, height: Float){
        value = Float(weight) / (height * height)
    
        switch value ?? 0.0 {
        case 0.0..<18.5:
            advice = "Eat more pies!"
            bgColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        case 18.5..<24.9:
            advice = "Fit as a fiddle!"
            bgColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        default:
            advice = "Eat less pies!"
            bgColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
    }
    
    func getBMI() -> String {
        return String(format: "%.1f", value ?? 0.0)
    }

}
