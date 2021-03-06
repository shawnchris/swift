// Playground - noun: a place where people can play

import UIKit

// Program 5.7

class Fraction : CustomStringConvertible {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
    }
    
    init() {}
    
    private func normalize() {
        if (denominator < 0) {
            denominator = -denominator
            numerator = -numerator
        }
        reduce()
    }
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
    }
    
    var description: String {
        return "\(numerator)/\(denominator)"
    }
    
    func printFraction() {
        print("\(numerator)/\(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
    
    func reduce() {
        let sign = numerator >= 0 ? 1 : -1
        var u = numerator * sign
        var v = denominator
        var r: Int
        while (v != 0) {
            r = u % v; u = v; v = r
        }
        numerator /= u
        denominator /= u
    }
    
    func add(f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator;
        result.denominator = denominator * f.denominator;
        result.reduce()
        return result
    }
    
}

func add(a: Fraction, b: Fraction) -> Fraction {
    return a.add(b)
}

func +(a: Fraction, b: Fraction) -> Fraction {
    return a.add(b)
}

func +=(inout left: Fraction, right: Fraction) {
    left = left + right
}

let f1 = Fraction(1, over: 2)
let f2 = Fraction(1, over: 4)

let f3 = f1.add(f2)
f3.printFraction()

let f4 = add(f1, b: f2)
f4.printFraction()

let f5 = f1 + f2
f5.printFraction()

var f6 = Fraction(1, over: 2)
f6 += f2
f6.printFraction()


