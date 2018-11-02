import UIKit

// Problem #14
let capitalCities = ["Japan":"Tokyo","France":"Paris","Spain":"Madrid","Egypt":"Cairo"]

// Problem #15
func search(countryName: String, dictionary:[String:String]) -> String? {
    return dictionary[countryName]
}
search(countryName: "Test", dictionary: capitalCities)
search(countryName: "Japan", dictionary: capitalCities)
