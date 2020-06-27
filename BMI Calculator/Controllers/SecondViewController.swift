//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Prosper Evergreen on 26.06.2020.
//  Copyright © 2020 proSPEC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmi: BMI?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiAdvice: UILabel!
    @IBOutlet weak var bmiBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi?.getBMI()
        bmiAdvice.text = bmi?.advice
        bmiBackground.backgroundColor = bmi?.bgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
