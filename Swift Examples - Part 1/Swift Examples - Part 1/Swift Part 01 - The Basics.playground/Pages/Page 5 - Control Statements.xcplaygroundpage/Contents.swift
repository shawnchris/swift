//: [Previous](@previous)

import Foundation

//: ### Program 3.1: Using `if-else` Statement

var x = 7.5, y = 3.0
if y != 0 {
    print("\(x)/\(y) is \(x/y)")
} else {
    print("\(x)/\(y) is undefined")
}

y = 0.0
if y != 0 {
    print("\(x)/\(y) is \(x/y)")
} else {
    print("\(x)/\(y) is undefined")
}


//: ### Program 3.2: Using `while` Loops

let N = 100
var sum = 0
var i = 1
while i <= N {
    sum += i++
}
print("sum =", sum)

var val = 0.0
i = 1
while i < N {
    val += 1.0 / Double(i++)
}
print("val =", val)


//: ### Program 3.3: Using `while` Loops
// Euler's number

var n = 1
var t = 1.0, e = 1.0
while t > 1e-10 {
    var f = 1
    for i in 1 ... n { // calculate n!
        f *= i
    }
    t = 1.0 / Double(f)
    e += t
    n++
}
print(e)


//: ### Program 3.4: Using `repeat-while` Loop

n = 1
e = 1.0
repeat {
    var f = 1
    for i in 1...n { // calculate n!
        f *= i
    }
    t = 1.0 / Double(f)
    e += t
    n++
} while t > 1e-10
print(e)


//: ### Program 3.5: Using `for` Loops

sum = 0
for var i = 1; i <= N; i++ {
    sum += i
}
print("sum = \(sum)")

val = 0.0
for var i = 1; i < N; i++ {
    val += 1.0 / Double(i);
}
print("val =", val)


//: ### Program 3.6: Using Range and `for-in` Loop

sum = 0
for i in 1 ... N {
    sum += i
}
print("sum = \(sum)")

val = 0.0
for i in 1 ..< N {
    val += 1.0 / Double(i)
}
print("val =", val)


//: ### Program 3.7: Using Range and `for-in` Loop

for i in -10...0 {
    print("\(-i) ")
}


//: ### Program 3.8: Using an Anonymous Variable in a `for-in` Loop

var powerOfTwo = 1
for _ in 1 ... 10 {
    powerOfTwo *= 2
}
print(powerOfTwo)


//: ### Program 3.9: Linear Search

let largest25EuropeanCities = [
    "London",
    "Berlin",
    "Madrid",
    "Rome",
    "Paris",
    "Bucharest",
    "Vienna",
    "Budapest",
    "Hamburg",
    "Warsaw",
    "Barcelona",
    "Munich",
    "Milan",
    "Prague",
    "Sofia",
    "Brussels",
    "Birmingham",
    "Cologne",
    "Naples",
    "Stockholm",
    "Turin",
    "Marseille",
    "Amsterdam",
    "Valencia",
    "Zagreb"
]

let searches = [
    "Rome", "Venice", "Barcelona", "Seville"
]
for city in searches {
    var found = false
    for c in largest25EuropeanCities {
        if c == city {
            found = true
            break
        }
    }
    print(city, "is", found ? "found" : "not found")
}

//: [Next](@next)
