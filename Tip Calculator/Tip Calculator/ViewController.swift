//
//  ViewController.swift
//  Tip Calculator
//
//  Created by user145126 on 1/22/19.
//  Copyright © 2019 Shakkhar Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipValue: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercent = Double(tipValue.value / 100.0)
        print(tipPercent)
        let total = bill + (bill * tipPercent)
        
        // Update the tip and total labels
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(String(format: "%.0f", tipPercent * 100) + "% Tip")
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        
        // Hide Keyboard
        view.endEditing(true)
    }
}

