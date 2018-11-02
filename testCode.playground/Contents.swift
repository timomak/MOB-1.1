// Problem #1
// Variable are mutable, constants are immutable.

// Problem #2
let birthday: String = "September 20th 2000"

// Problem #3
var height = 189.90

// Problem #4
func multiply(x: Int, y:Int) -> Int {
    return x*y
}

// Problem #5
// Optional is a type that can be either a value or nil.

// Problem #6
// Force unwrapping is when you unwrap an optional without checking if it has a value. If it has no value, it can return an error.

// Problem #7
// a).
let dogBreed: String? = nil
if dogBreed != nil {
    print("Dog is a \(dogBreed)")
} else {
    print("What dog?")
}

// b).
var nilCoalescing = dogBreed ?? "No dog"

// Problem #8
// >= Greater or Equal
// <= Less than or equal to
// > Greater
// = Assignment
// == Equal to (Relational, not Assignment)
// != Different than
// && And
// || Or

// Problem #9
var minutesLeft = 0

if minutesLeft <= 10 {
    print("Hurry!")
} else if minutesLeft >= 10 && minutesLeft <= 20 {
    print("On Time")
} else if minutesLeft > 20 {
    print("You have plenty of time")
}

// Problem #10
let weekdays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
]

// Problem #11
var favoriteNumbers: [Int] = []

// Problem #12
func fibonacci(_ n:Int) -> [Int] {
    var current = 0
    var oldNumber = 0
    var newNumber = 1
    var fibonacciArray = [1]
    for _ in 0...n{
        current = newNumber
        newNumber = oldNumber + newNumber
        oldNumber = current
        fibonacciArray.append(newNumber)
    }
    return fibonacciArray
}

// Problem #14
let capitalCities = ["Japan":"Tokyo","France":"Paris","Spain":"Madrid","Egypt":"Cairo"]

// Problem #15
func search(countryName: String, dictionary:[String:String]) -> String? {
    return dictionary[countryName]
}
search(countryName: "Test", dictionary: capitalCities)
search(countryName: "Japan", dictionary: capitalCities)

// Problem #16
enum Tracks {
    case MOB
    case FEW
    case BEW
    case DS
    case CS
}

let currentClass = Tracks.MOB

// Problem #17
struct MilkTea {
    var sweetnessPercent: Double
    var isHot: Bool
    var teaType: Tea
    var hasMilk: Bool
    var hasBoba: Bool
    var bobaType: Boba?
}

// Problem # 18
var matcha =  MilkTea(sweetnessPercent: 0.25, isHot: false, teaType: GreenTea, hasMilk: True, hasBoba: true, bobaType: CrystalBoba)

// Problem #19
class Bicycle {
    var color: String
    var isElectric: Bool
    var rentalFee: Float
    var isAvaliable: Bool
    
    init(bikeColor:String,electric:Bool,rentalPrice:Float,avaliable:Bool) {
        self.color = bikeColor
        self.isElectric = electric
        self.rentalFee = rentalPrice
        self.isAvaliable = avaliable
    }
    func checkout() {
        isAvaliable = true
    }
}

// Problem #20
class LimeBike: Bicycle {
    override var color = "Green"
    override var isElectric = true
}

// Problem #21
// A value is defined there and now, the reference is not necessarly in the immediate scope
var value = 1
var value = Value(value:1)

// Problem #22
//  #1
protocol Flyable {
    var canFly: Bool {get set}
    func flyAway()
}

// #2  Fill here
struct Bird: Flyable {
    var canFly: Bool
    
    func flyAway() {
        print("Bird is flying")
    }
}

