//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fahad Tariq on 10/06/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func heightValueChanged(_ sender: UISlider) {
        
       // print(String(format:"%.2f", sender.value))
        let height = String(format:"%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        
        //print(String(format:"%.0f", sender.value))
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
         
        
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "gotoResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gotoResults"{
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            
            
            
        }
    }
}

