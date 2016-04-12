//: Playground - noun: a place where people can play

import UIKit

// The rank function
func rank(target : Int, inSortedArray array: [Int], startIndex lo: Int, endIndex hi: Int) -> Int {
    if (lo > hi) {
        return -1
    }
    let mid = lo + (hi - lo) / 2
    if (target < array[mid]) {
        return rank(target, inSortedArray: array, startIndex: lo, endIndex: mid - 1)
    }
    else if (target > array[mid]) {
        return rank(target, inSortedArray: array, startIndex: mid + 1, endIndex: hi)
    }
    else {
        return mid;
    }
}

// Test cases of rank function
let testArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(rank(0, inSortedArray: testArray, startIndex: 0, endIndex: 9))
print(rank(1, inSortedArray: testArray, startIndex: 0, endIndex: 9))
print(rank(9, inSortedArray: testArray, startIndex: 0, endIndex: 9))
print(rank(10, inSortedArray: testArray, startIndex: 0, endIndex: 9))

print("===================================")


// The Fraction class
class Fraction {
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
    }
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
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
        // This is wrong!
        //numerator /= u * sign;
        numerator /= u
        denominator /= u
    }
    
    func add(f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func substract(f: Fraction) ->Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator - f.numerator * denominator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func multiply(f: Fraction) ->Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    func divide(f: Fraction) ->Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator
        result.denominator = denominator * f.numerator
        result.normalize()
        result.reduce()
        return result
    }
}

// Test cases of Fraction class
let f1 = Fraction(1, over: 2)
let f2 = Fraction(1, over: 4)

var result = f1.add(f2)
result.printFraction()
print(result.toDouble())

result = f1.substract(f2)
result.printFraction()
print(result.toDouble())

result = f1.multiply(f2)
result.printFraction()
print(result.toDouble())

result = f1.divide(f2)
result.printFraction()
print(result.toDouble())

print("===================================")

f2.setTo(-1, over: 4)
result = f1.add(f2)
result.printFraction()
print(result.toDouble())

result = f1.substract(f2)
result.printFraction()
print(result.toDouble())

result = f1.multiply(f2)
result.printFraction()
print(result.toDouble())

result = f1.divide(f2)
result.printFraction()
print(result.toDouble())

print("===================================")

f1.setTo(-1, over: 2)
result = f1.add(f2)
result.printFraction()
print(result.toDouble())

result = f1.substract(f2)
result.printFraction()
print(result.toDouble())

result = f1.multiply(f2)
result.printFraction()
print(result.toDouble())

result = f1.divide(f2)
result.printFraction()
print(result.toDouble())

print("===================================")

f1.setTo(1, over: 1024)
f2.setTo(1, over: 4096)
result = f1.add(f2)
result.printFraction()
print(result.toDouble())

result = f1.substract(f2)
result.printFraction()
print(result.toDouble())

result = f1.multiply(f2)
result.printFraction()
print(result.toDouble())

result = f1.divide(f2)
result.printFraction()
print(result.toDouble())


