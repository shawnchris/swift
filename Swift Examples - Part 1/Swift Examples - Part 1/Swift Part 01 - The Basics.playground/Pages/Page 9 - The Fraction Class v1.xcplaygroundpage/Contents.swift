//: [Previous](@previous)

import Foundation

//: ### Program 5.3: The Fraction Class, the Initial Version

class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    func printFraction() {
        print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
}

var f1 = Fraction()
f1.printFraction()
f1.numerator = 1
f1.denominator = 3
f1.printFraction()
print(f1.numerator)
print(f1.denominator)
print(f1.toDouble())

var f2 = Fraction()
f2.denominator = 0
print(f2.toDouble())

f2.numerator = 1
print(f2.toDouble())

//: [Next](@next)
