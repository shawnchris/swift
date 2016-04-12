//: [Previous](@previous)

import Foundation

//: ### Proram 5.4: The Fraction Class, Version 2

class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    init() {}
    
    func setTo(numerator: Int, denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func setTo(numerator: Int, _ denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func printFraction() {
        print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
}

var f1 = Fraction(numerator: 1, denominator: 2)
f1.printFraction()

var f2 = Fraction(2, over: 3)
f2.printFraction()

var f3 = Fraction()
f3.setTo(1, denominator: 3)
f3.printFraction()

var f4 = Fraction()
f4.setTo(1, over: 4)
f4.printFraction()

var f5 = Fraction()
f5.setTo(3, 4)
f5.printFraction()

//: [Next](@next)
