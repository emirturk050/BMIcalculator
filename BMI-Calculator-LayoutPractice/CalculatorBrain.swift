//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Emir Türk on 6.07.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
   
    var bmi: Bmi?
    
   mutating func calculateBMI(height: Float, weight: Float ) {
       let bmiValue = weight / (height * height )
       
       if bmiValue < 18.5 {
           bmi = Bmi(value: bmiValue, advice: "eat more baklava!", color: .blue)
       }
       else if bmiValue < 24.9 {
           bmi = Bmi(value: bmiValue, advice: "fit as a tiger!", color: .green)
       }
       else {
           bmi = Bmi(value: bmiValue, advice: "you are OBEZ", color: .red)
       }
    }
    
    func getBMIValue() -> String {
        return  String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
}
