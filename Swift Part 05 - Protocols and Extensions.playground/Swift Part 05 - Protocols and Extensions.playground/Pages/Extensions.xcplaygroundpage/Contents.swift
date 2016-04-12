//: [Previous](@previous)

import Foundation

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// prints "One inch is 0.0254 meters"

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// prints "A marathon is 42195.0 meters long"


extension Int {
    mutating func square() {
        self = self * self
    }
}

var n = 9
n.square()
n

extension Int {
    func repetitions(task: () -> ()) {
        for _ in 0...self {
            task()
        }
    }
}

5.repetitions({
    print("Hello!")
})

5.repetitions {
    print("Hello!")
}


//: [Next](@next)
