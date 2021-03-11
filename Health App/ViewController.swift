//
//  ViewController.swift
//  Health App
//
//  Created by Hardikkumar Vasoya on 2021-03-09.
//  Copyright © 2021 Hardikkumar Vasoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btnCalculate_Click(_ sender: Any) {
        
        self.view.endEditing(true)
        
        let weight = txtWeight.text
        let height = txtHeight.text
        
        if weight!.isEmpty {
            lblResult.text = "Please Enter Weight!"
        } else if height!.isEmpty {
            lblResult.text = "Please Enter Height!"
        } else if weight == "." {
            lblResult.text = "Please Enter Valid Weight!"
        } else if height == "." {
            lblResult.text = "Please Enter Valid Height!"
        } else {
            let newWeight = Double(weight!)
            let newHeight = Double(height!)
            
            let bodyMass = newWeight! / (newHeight! * newHeight!)
            
            let roundedBodyMass = Double(round(10*bodyMass)/10)
            
//            print(roundedBodyMass)
            
            if roundedBodyMass < 18.5 {
                lblResult.text = "BM: " + String(roundedBodyMass) + ", Underweight"
            } else if (roundedBodyMass >= 18.5 && roundedBodyMass <= 24.9) {
                lblResult.text = "BM: " + String(roundedBodyMass) + ", Healthy weight"
            } else if (roundedBodyMass >= 25 && roundedBodyMass <= 29.9) {
                lblResult.text = "BM: " + String(roundedBodyMass) + ", Overweight"
            } else {
                lblResult.text = "BM: " + String(roundedBodyMass) + ", Obese"
            }
        }
    }
    
}

