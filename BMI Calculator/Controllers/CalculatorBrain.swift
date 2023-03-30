//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by BETTY JIMENEZ on 30/3/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
  
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
        
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight:Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 0.682, green: 0.776, blue: 0.812, alpha: 1.0))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: UIColor(red: 0.698, green: 0.886, blue: 0.733, alpha: 1.0))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color:UIColor(red: 1.0, green: 0.819, blue: 0.863, alpha: 1.0))
        }
        
    }

}
