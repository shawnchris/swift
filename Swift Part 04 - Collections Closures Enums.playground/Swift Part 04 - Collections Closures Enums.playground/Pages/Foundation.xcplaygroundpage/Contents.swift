//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let π = M_PI
let e = M_E
let log2e = M_LOG2E
let sqrt2 = M_SQRT2

var square = 9.4
var f = floor(square)
var c = ceil(square)
var root = sqrt(f)
var p = pow(2.5, 3)

sin(π / 3)
cos(π / 3)
tan(0.6)
atan2(2.5, 4.8)

let N : UInt32 = 100

arc4random() % N
arc4random() % N
arc4random() % N


import Foundation

let s0 = String(format: "  %.2f", π)

NSNumberFormatter().numberFromString(s0)?.doubleValue

(s0 as NSString).doubleValue

Double("-3.1415")
Double("1.4e3")
Double("1_1")


("2048" as NSString).integerValue

Int("2048")
Int("five")




//: [Next](@next)
