//: [Previous](@previous)

import Foundation

//: ### Program 5.2: The Counter Class, Version 2

class Counter {
    var count = 0
    func increment() {
        count++
    }
    func decrement() {
        count--
    }
    func incrementBy(c: Int) {
        count += c
    }
    func decrementBy(c: Int) {
        count -= c
    }
}

var c2 = Counter()
c2.incrementBy(10)
c2.count
c2.decrement()
c2.decrementBy(5)
c2.count


//: [Next](@next)
