//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fahad Tariq on 12/06/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        
        
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, colour: <#T##UIColor#>)
        
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Dude! you need to ear more!", colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "You are fit as Fuck bro!", colour: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else{
            bmi = BMI(value: bmiValue, advice: "Dude you need to eat less!", colour: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        
        let bmiTo1 = String(format: "%.1f",bmi?.value ?? 0.0)
        
        return bmiTo1
        }
        
    func getAdvice() -> String{
        return bmi?.advice ?? "Sorry"
    }
    
    func getColor() -> UIColor{
        return bmi?.colour ?? #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 0.9012200342)
    }
    
    
}
