//: [Previous](@previous)

import Foundation

let numbers = [
    "zero": "zéro",
    "one": "un",
    "two": "deux",
    "three": "trois",
    "four": "quatre",
    "five": "cinq",
    "six": "six",
    "seven": "sept",
    "eight": "huit",
    "nine": "neuf",
    "ten": "dix"
]


for (key, value) in numbers {
    print("English: \(key) \tFrench: \(value)")
}

//var dictionary = [:]

//var dictionary : Dictionary<String, Int>
var dict1 : [String: Int]
dict1 = [:]
dict1["a"] = 1

//var dictionary = Dictionary<String, Int>()
var dict2 = [String: Int]()

var dictionary = [
    "zéro" : 0,
    "un" : 1,
    "deux" : 2,
    "trois" : 3,
]

dictionary.count
var value = dictionary["deux"]  // optional value

print("The value of duex is \(value)")

if let value = dictionary["deux"]  {
    print("The value of duex is \(value)")
}

dictionary["quatre"]
print(dictionary["quatre"])
if let value = dictionary["quatre"]  {
    print("The value of duex is \(value)")
}


dictionary["quatre"] = 40
dictionary

dictionary["quatre"] = 4
dictionary

dictionary["zéro"] = nil
dictionary


for key in dictionary.keys {
    print("key: \(key)")
}


for v in dictionary.values {
    print("value: \(v)")
}


dictionary.count


var numberOfLegs = [ "ant": 6, "snake": 0, "cheetah": 4 ]
// a Dictionary with String keys and Int values


for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

numberOfLegs.count
numberOfLegs["spider"] = 273
numberOfLegs.count

numberOfLegs["spider"] = 8

numberOfLegs.count
numberOfLegs["cheetah"] = nil
numberOfLegs.count

numberOfLegs["bear"] = nil
numberOfLegs.count





//: [Next](@next)
