//
//  RealEstateCalculator-formulas.swift
//  
//
//  Created by timofey makhlay on 9/9/18.
//

import Foundation
import UIKit


var timos = [1112, 880139, 1050000, 4500, 1087, 906, 0, 0, 0.4444444444444, 250, 0.06, 100]
var sixteenthFloor = [1603, 1235000.00, 1850000.00, 6800, 1100, 1250, 0, 7.50, 0, 250, 0.06, 300]
var apartments = [timos, sixteenthFloor]



// Loops through the apartment list
for apartment in apartments {
    // Count of the items in the apartment and number of loops in item list
    var apartmentValuesForloop = 0
    var name = apartment[0]
    var originalPrice = apartment[1]
    var currentOffering = apartment[2]
    
    // Monthly
    var rent = apartment[3]
    var buildingTax = apartment[4]
    var propertyTax = apartment[5]
    var otherTax = apartment[6]
    var transactionFees = apartment[7]
    var rentTaxPercentage = apartment[8]
    
    // Yealy
    var insuranceFees = apartment[9]
    var yearlyGrowth = apartment[10]
    var yearlyFees = apartment[11]
    
    func priceInYears(_ years: Double) -> Double {
        let newPrice = (pow(yearlyGrowth + 1, years)) * originalPrice
        return newPrice
    }
    
    func yearlyRentIncome() -> Double {
        let rentTaxMonthly = buildingTax + propertyTax
        let totalRentPositive = (rent - rentTaxMonthly) * 12.00
        return totalRentPositive
    }
    
    func yearlyValueGrowth() -> Double {
        let newValue = Double(priceInYears(1)) - originalPrice
        return newValue
    }
    
    func printInfo() {
        print("Name: \(Float(name))\nYearly Rent Income: \(Float(yearlyRentIncome()))\nValue Growth in a Year: \(Float(yearlyValueGrowth()))\nPrice in 5 years: \(Int(priceInYears(5)))\n\n")
    }
    
    printInfo()
    
}
