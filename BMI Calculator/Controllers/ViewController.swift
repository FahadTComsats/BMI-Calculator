//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fahad Tariq on 10/06/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        let bmi = weight/pow(height, 2)
        print(bmi)
        
    }
    
    
}

