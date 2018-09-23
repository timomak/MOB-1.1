import UIKit

// Write a program to write fibonacci numbers
//var fiboArray = [1]
//func fibo(_ num: Int) -> [Int] {
//    var new = 1
//    var current = 0
//    for _ in 0...num {
//        let newest: Int = new + current
//        fiboArray.append(newest);
//        current = new
//        new = newest
//    }
//    return fiboArray
//}
//
//print(fibo(90))

// Program to elaluate powers of 2 as long as it's equal of less than N
//var powe: Int = 1
//func powerOfTwo(_ num: Int) -> Int {
//    repeat {
//        powe = powe * 2
//    } while powe < num
//    powe = powe / 2
//    return powe
//}
//
//powerOfTwo(100)

// Create a Struct that could be useful for Real Estate

//struct Apartment {
//    var name : String
//    var originalPrice : Float
//    var currentOffering: Float
//
//    // Monthly
//    var rent : Float
//    var buildingTax : Float
//    var propertyTax : Float
//    var otherTax : Float
//    var transactionFees : Float
//    var rentTaxPercentage : Float
//
//    // Yealy
//    var insuranceFees : Float
//    var yearlyGrowth : Float
//    var yearlyFees : Float
//
//    func printInfo() {
//        print("Name: \(self.name)\nYearly Rent Income: \(self.yearlyRentIncome())\nYealy Value Growth: \(yearlyValueGrowth())")
//    }
//
//    func priceInYears(_ years: Int) -> Float {
//        let newPrice = (powf(yearlyGrowth + 1, Float(years))) * originalPrice
//        return newPrice
//    }
//
//    func yearlyRentIncome() -> Float {
//        let rentTaxMonthly = buildingTax + propertyTax
//        let totalRentPositive = (rent - rentTaxMonthly) * 12.00
//        return totalRentPositive
//    }
//
//    func yearlyValueGrowth() -> Float {
//        let newValue = self.priceInYears(1) - originalPrice
//        return newValue
//    }
//}
//
//var timos = Apartment(name: "1120", originalPrice: 880000.00, yearlyGrowth: 0.06, rent: 4500, rentTaxPercentage: 0.4, rentTaxMonthly: 2000)
//timos.printInfo()
//timos.priceInYears(1)

//
//var timosApt = [1,2,3]
//
//func apartmentMath(_ name : String,_ originalPrice : Float,_ currentOffering: Float,_ rent : Float,_ buildingTax : Float,_ propertyTax : Float,_ otherTax : Float,_ transactionFees : Float,_ rentTaxPercentage : Float,_ insuranceFees : Float,_ yearlyGrowth : Float,_ yearlyFees : Float) {
//
//
//
//    func priceInYears(_ years: Int) -> Float {
//        let newPrice = (powf(yearlyGrowth + 1, Float(years))) * originalPrice
//        return newPrice
//    }
//
//    func yearlyRentIncome() -> Float {
//        let rentTaxMonthly = buildingTax + propertyTax
//        let totalRentPositive = (rent - rentTaxMonthly) * 12.00
//        return totalRentPositive
//    }
//
//    func yearlyValueGrowth() -> Float {
//        let newValue = priceInYears(1) - originalPrice
//        return newValue
//    }
//
//    print("Name: \(name)\nYearly Rent Income: \(yearlyRentIncome())\n2019 Value Growth: \(yearlyValueGrowth())\nPrice in 5 years: \(Int(priceInYears(5)))")
//}
//
//apartmentMath("1112", 880139, 1050000, 4500, 1087, 906, 0, 0, 0.4444444444444, 250, 0.06, 100)
//


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













