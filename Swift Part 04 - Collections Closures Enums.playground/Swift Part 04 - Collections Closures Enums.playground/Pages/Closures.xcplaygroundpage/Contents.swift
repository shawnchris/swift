//: [Previous](@previous)

import Foundation

func hello(name: String) {
    print("Hello, \(name)")
}

hello("Function")

let c1 = { (name: String) in
    print("Hello, \(name)")
}

c1("Closure")

var c2 = c1
c2("Closure")

c2 = hello
c2("Closure")


//

func threeTimes(n: Int) -> Int {
    return n * 3
}

threeTimes(4)

let c3 = { (n: Int) -> Int in
    return n * 3
}

c3(5)

let c4 = { n in n * 3 }

c4(6)

let cities = [
    "Barcelona", "Atlanta", "Sydney", "Athens",
    "Beijing", "London", "Rio de Janeiro", "Tokyo"
]

cities.sort({(a: String, b: String) -> Bool in
    return a < b
})

print(cities.sort {(a: String, b: String) -> Bool in
    return a < b
})


cities.sort({(a: String, b: String) -> Bool in
    return a > b
})

print(cities.sort {(a: String, b: String) -> Bool in
    return a > b
})

cities.sort({(a: String, b: String) -> Bool in
    return a.characters.count < b.characters.count
})

cities.sort() {(a: String, b: String) -> Bool in
    return a.characters.count < b.characters.count
}

cities.sort {(a: String, b: String) -> Bool in
    return a.characters.count < b.characters.count
}


print(cities.sort {(a: String, b: String) -> Bool in
    return a.characters.count < b.characters.count
})

cities.sort(
    { a, b in a < b })

cities.sort(
    { $0 < $1 })

cities.sort()
    { $0 < $1 }

cities.sort
    { $0 < $1 }

cities.sort(<)

cities.sort(>=)


var cities2 = cities
cities2.sortInPlace()

cities2.sortInPlace(>=)

for c in cities2.reverse() {
    print(c)
}

var numberOfLegs = [ "ant": 6, "snake": 0, "cheetah": 4, "spider": 8, "elephant": 4 ]

let sortedLegs = numberOfLegs.sort { (e1: (String, Int), e2: (String, Int) ) -> Bool in
    e1.1 != e2.1 ?  e1.1 < e2.1 : e1.0 <= e2.0
}

for (name, legs) in sortedLegs {
    print("\(name)s have \(legs) legs.")
}

//: [Next](@next)
