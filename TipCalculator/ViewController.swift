//
//  ViewController.swift
//  TipCalculator
//
//  Created by Christopher Lin on 1/8/19.
//  Copyright © 2019 Christopher Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var sliderField: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double(sliderField.value / 100)
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func valueChanged(_ sender: UISlider) {
        let currentValue = sender.value
        sliderField.setValue(Float(Int((currentValue+2.5)/5)*5), animated: false)
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double(sliderField.value / 100)
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

