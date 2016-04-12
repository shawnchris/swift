//: [Previous](@previous)

import Foundation

//: ### Program 4.1: A Parameter-less Function

func helloWorld() {
    print("Hello, world!")
}

helloWorld()


//: ### Program 4.2: A Function with a Parameter

func greet(name : String) {
    print("Hello, \(name)!")
}

greet("Swift 2.1")
greet("iOS 9")


//: ### Program 4.3: A Function with a Return Value

func square(n : Int) -> Int {
    return n * n
}

square(25)
square(128)


//: ### Program 4.4: Primality Test

func isPrime(n : Int) -> Bool {
    if n < 2 {
        return false
    } else {
        for var i = 2; i * i < n; i++ {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}

isPrime(2)
isPrime(15)
isPrime(23)

for i in 1 ... 100 {
    if isPrime(i) {
        print("\(i) is a prime number")
    }
}


//: ### Program 4.5: Convert to Ordinals

func toOrdinal(i: Int) -> String {
    if i % 10 >= 1 && i % 10 <= 3  // 1st, 2nd, 3rd
        && i % 100 / 10 != 1 {     // but 11th, 12th, 13th
            let suffix = [ "st", "nd", "rd" ]
            return "\(i)\(suffix[i % 10 - 1])"
    } else {
        return "\(i)th"
    }
}

toOrdinal(1)
toOrdinal(2)
toOrdinal(3)
toOrdinal(4)
toOrdinal(10)
toOrdinal(11)
toOrdinal(15)
toOrdinal(23)
toOrdinal(101)
toOrdinal(300)
toOrdinal(522)
toOrdinal(613)


//: ### Program 4.6: A Recursive Function: the _Fibonacci_ Numbers

func fibonacci(i : UInt) -> UInt {
    if (i == 0 || i == 1) {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}

fibonacci(8)
fibonacci(12)

for i : UInt in 1 ... 15 {
    print("fibonacci(\(i)) = \(fibonacci(i))")
}


//: ### Program 4.7: The Maximum Function

//: Version 1:

func maximum(x: Int, y: Int) -> Int {
    return x >= y ? x : y
}

maximum(2, y: 5)
maximum(10, y: -11)


//: Version 2:

func maximum(x: Int, _ y: Int) -> Int {
    return x >= y ? x : y
}

maximum(2, 5)
maximum(10, -11)

func maximumOf(x: Int, and y: Int) -> Int {
    return x >= y ? x : y
}

maximumOf(2, and: 5)
maximumOf(10, and: -11)


// Prorgam 4.8: Functions with Named Parameters

//: Version 1:

func printTicket(name: String, origin: String, destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicket("Tim Cook", origin: "San Francisco, CA", destination: "Chicago, IL")

//: Version 2:

func printTicketFor(name: String, from origin: String, to destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicketFor("Tim Cook", from: "San Francisco, CA", to: "Chicago, IL")

// Version 3: 

// all parameters are anonymous

func printTicket(name: String, _ origin: String, _ destination: String) {
    print("Ticket\n  Passenger name: \(name)")
    print("  From: \(origin)\n  To: \(destination)")
}

printTicket("Tim Cook", "San Francisco, CA", "Chicago, IL")


//: ### Program 4.9: The Median Function

//: Version 1:

func median(x: Int, _ y: Int, _ z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(1, 2, 3)
median(1, 3, 2)
median(3, 1, 2)
median(3, 2, 1)
median(2, 1, 3)
median(2, 3, 1)
median(1, 1, 2)
median(1, 2, 1)
median(2, 1, 1)
median(2, 2, 1)
median(2, 1, 2)
median(1, 2, 2)

//: Version 2:

func medianOf(x: Int, and y: Int, and z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

medianOf(1, and : 2, and: 3)

//: Version 3:

func median(x: Int, y: Int, z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(1, y: 2, z: 3)
median(1, y: 3, z: 2)
median(3, y: 1, z: 2)
median(3, y: 2, z: 1)
median(2, y: 1, z: 3)
median(2, y: 3, z: 1)
median(1, y: 1, z: 2)
median(1, y: 2, z: 1)
median(2, y: 1, z: 1)
median(2, y: 2, z: 1)
median(2, y: 1, z: 2)
median(1, y: 2, z: 2)

//: Version 4:

func median(x x: Int, y: Int, z: Int) -> Int {
    return x > y ? (y > z ? y : x > z ? z : x)
        : (x > z ? x : y > z ? z : y)
}

median(x: 1, y: 2, z: 3)


//: ### Program 4.10: The Greatest Common Divisor Function
// Euclid's algorithm

func gcd(a: UInt, _ b: UInt) -> UInt {
    var u = a, v = b
    var r = u % v
    while r > 0 {
        u = v; v = r; r = u % v
    }
    return v
}

gcd(2, 3)
gcd(5, 15)
gcd(18, 15)
gcd(18, 27)


func gcd(a a: UInt, b: UInt) -> UInt {
    var u = a, v = b
    var r = u % v
    while r > 0 {
        u = v; v = r; r = u % v
    }
    return v
}

gcd(a: 2, b: 3)
gcd(a: 5, b: 15)
gcd(a: 18, b: 15)
gcd(a: 18, b: 27)


//: ### Program 4.11: A Function with a Default Parameter Value

func greeting(name : String = "world") {
    print("Hello, \(name)!")
}

greeting("Swift")
greeting()


//: [Next](@next)
