//: Playground - noun: a place where people can play

import UIKit

let months = [
    "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"
]


print("Month Name");
print("===== ====");
for var i = 0; i < months.count; ++i {
    //println(" \(i + 1)   \(months[i])")
    let str = String(format: "%2i", i+1)
    print(" \(str)   \(months[i])")
}


for (i, name) in months.enumerate() {
    let str = String(format: "%2i", i+1)
    print(" \(str)   \(name)")
}


var shoppingList = [ "Eggs", "Milk" ]
shoppingList += [ "Flour" ]
shoppingList += [ "Gruyère Cheese", "Butter" ]
shoppingList[0] = "Beef broth"
shoppingList[1...2] = [ "Onion", "Bay leaves", "Baguette" ]
print(shoppingList)

//var array = []
//let array: Array[Int] = []
//let array: [Int] = []

var array: [Int] = []
//var array = [Int]()

//var array = Array<Int>()

for i in 0 ... 10 {
    print(i)
    array.append(i)
}
print(array)

array += [ 11, 12 , 13]

array[0] = 100
array

array.insert(200, atIndex: 11)
array.insert(201, atIndex: 12)

array[1...9]

array[3...5] = [33, 44, 55]
array

array[11...14] = []
array

array.removeAtIndex(5)
array

array.sort({$0 > $1})
array

array.sort({$0 < $1})
array

//: [Next](@next)
