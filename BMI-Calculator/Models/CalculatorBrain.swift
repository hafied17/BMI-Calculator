//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Investo Medika Asia on 14/12/23.
//

import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / (height * height)
        if bmi < 18.5 {
            // underweight
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: UIColor.systemBlue)

        } else if bmi < 24.9 {
            // normal
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: UIColor.systemGreen)

        } else if bmi > 24.9 {
            //overweight
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: UIColor.systemRed)

        }
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? .black
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getBMI() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
}
