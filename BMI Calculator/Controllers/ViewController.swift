//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Prosper Evergreen on 26.06.2020.
//  Copyright © 2020 proSPEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calcBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calcBrain.setHeight(value: 1.5)
        calcBrain.setWeight(value: 100)
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        calcBrain.setHeight(value: sender.value)
        heightLabel.text = "\(calcBrain.height!)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        calcBrain.setWeight(value: sender.value)
        weightLabel.text = "\(calcBrain.weight!)Kg"
    }
    
    @IBAction func calcBtn(_ sender: UIButton) {
        calcBrain.calcBMI()
        self.performSegue(withIdentifier: "goToPageTwo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToPageTwo"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.bmi = calcBrain.bmi
        }
    }
    
}

