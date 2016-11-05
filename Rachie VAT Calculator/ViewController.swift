//
//  ViewController.swift
//  Rachie VAT Calculator
//
//  Created by Joe Morris on 07/08/2016.
//  Copyright © 2016 Joe Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let vatRate = 20.0
    
    
    @IBOutlet var netTotalInput : UITextField!
    @IBOutlet var vatInfoText : UILabel!
    @IBOutlet var vatTotalLabel : UILabel!
    @IBOutlet var grossTotalLabel : UILabel!
    
    let vatCalc = VatCalculatorModel(setVatPercentage: 20.0)

    @IBAction func netTotalEntered(sender: AnyObject) {
            let netInputNumber = Double((netTotalInput.text! as NSString).doubleValue)
            vatCalc.netTotal = netInputNumber
            vatCalc.calculateVatTotal()
            vatCalc.calculateGrossTotal()
            vatTotalLabel.text = "£\(String(format: "%0.2f", vatCalc.vatTotal))"
            grossTotalLabel.text = "£\(String(format: "%0.2f", vatCalc.grossTotal))"
        
    }
    
    func setupPage () {
        
        vatInfoText.text = "VAT @ \(String(vatCalc.vatPercentage))%:"
        netTotalInput.text = "0"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

