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
    var rentTax : Float
    
    func printInfo() {
        print("Name: \(self.name)\n Address: \(self.address)\n ")
    }
    
    func priceInYears(_ years: Int) -> Float {
        let newPrice = (powf(yearlyGrowth + 1, Float(years))) * buyPrice
        return newPrice
    }
}

var timos = Apartment(name: "1120", address: "13700 marina", buyPrice: 880000.00, yearlyGrowth: 0.1, rentPrice: 4500, rentTax: 0.4444)

timos.priceInYears(3)







