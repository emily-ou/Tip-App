//
//  ViewController.swift
//  Tip App
//
//  Created by Emily Ou on 1/14/20.
//  Copyright © 2020 Emily Ou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Bill field, tip label, and total label outlets
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {

        // Dismiss keyboard on tap
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount and convert to double
        // If not valid then change to 0
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total amount
        // Create an array to store tip percentages
        let tipArray = [0.15, 0.18, 0.2]
        let tip = bill * tipArray[tipController.selectedSegmentIndex]
        let total = tip + bill
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

