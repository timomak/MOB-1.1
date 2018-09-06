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

struct Apartment {
    var name : String
    var address : String
    var buyPrice : Float
    var yearlyGrowth : Float
    var rentPrice : Float
    var rentTaxPercentage : Float
    var rentTaxMonthly : Float
    
    func printInfo() {
        print("Name: \(self.name)\nAddress: \(self.address)\nYearly Rent Income: \(self.yearlyRentIncome())\nYealy Value Growth: \(yearlyValueGrowth())")
    }
    
    func priceInYears(_ years: Int) -> Float {
        let newPrice = (powf(yearlyGrowth + 1, Float(years))) * buyPrice
        return newPrice
    }
    
    func yearlyRentIncome() -> Float {
        let totalRentPositive = (rentPrice - 2000) * 12.00
        return totalRentPositive
    }
    
    func yearlyValueGrowth() -> Float {
        let newValue = self.priceInYears(1) - buyPrice
        return newValue
    }
}

var timos = Apartment(name: "1120", address: "13700 marina", buyPrice: 880000.00, yearlyGrowth: 0.06, rentPrice: 4500, rentTaxPercentage: 0.4, rentTaxMonthly: 2000)
timos.printInfo()
timos.priceInYears(1)







