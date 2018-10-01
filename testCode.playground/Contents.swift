//: Playground - noun: a place where people can play

import UIKit

func arraytoString(_ array: [String]) {
    var string = ""
    
    for i in 0..<array.count {
        string += array[i]
        if array[i] != array.last {
            string = addSpaces(string)
        }
    }
    print(string)
}

func addSpaces(_ sentence: String) -> String {
    return sentence + " "
}

arraytoString(["Swift", "is", "fun!"])
