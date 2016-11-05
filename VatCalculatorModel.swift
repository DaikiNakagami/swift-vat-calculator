//
//  VatCalculatorModel.swift
//  Rachie VAT Calculator
//
//  Created by Joe Morris on 07/08/2016.
//  Copyright © 2016 Joe Morris. All rights reserved.
//

import Foundation

class VatCalculatorModel {
    
    var netTotal: Double
    var vatPercentage: Double
    var vatTotal: Double
    var grossTotal: Double
    
    init(setVatPercentage: Double) {
        netTotal = 0.0
        vatPercentage = setVatPercentage
        vatTotal = 0.0
        grossTotal = 0.0
    }
    
    func calculateVatTotal () {
        vatTotal = netTotal*(vatPercentage/100.0)
    }
        
    func calculateGrossTotal () {
        grossTotal = netTotal+vatTotal
    }
}
