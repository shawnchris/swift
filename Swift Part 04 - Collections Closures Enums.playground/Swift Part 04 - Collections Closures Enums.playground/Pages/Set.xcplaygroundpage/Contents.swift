//: [Previous](@previous)

import Foundation

//var genres: Set<String> = ["Rock", "Classical", "Hip hop"]
var genres: Set = ["Rock", "Classical", "Hip hop"]

var cities = [ "Beijing", "London", "Rio de Janeiro" ] as Set

_stdlib_getDemangledTypeName(cities)



var newSports = Set<String>()

newSports.insert("Golf")
newSports.insert("Rugby seven")

print(newSports)

for s in newSports {
    print("\(s) has been added to Olympic sports")
}

genres.sort()

cities

cities.sort()


let oddNums: Set = [1, 3, 5, 7, 9]
let evenNums: Set = [0, 2, 4, 6, 8]
let smallPrimes: Set = [2, 3, 5, 7]

oddNums.union(evenNums).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddNums.intersect(evenNums).sort()
// []
oddNums.subtract(smallPrimes).sort()
// [1, 9]
oddNums.exclusiveOr(smallPrimes).sort()
// [1, 2, 9]


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true
farmAnimals.isDisjointWith(cityAnimals)
// true


var d = 100 as Float
_stdlib_getDemangledTypeName(d)


//: [Next](@next)
