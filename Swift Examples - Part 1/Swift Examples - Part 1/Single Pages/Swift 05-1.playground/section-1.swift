// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Program 5.1

class Counter {
    var count = 0
    func increment() {
        count++
    }
}

var c1 = Counter()
c1.increment()
c1.increment()
c1.count
c1.count = 0
c1.increment()
c1.count
