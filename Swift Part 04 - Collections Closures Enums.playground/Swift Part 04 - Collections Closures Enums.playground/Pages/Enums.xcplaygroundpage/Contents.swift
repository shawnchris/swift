//: [Previous](@previous)

import Foundation

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Platnet_9
}

var planet = Planet.Earth

planet = .Venus


enum Direction : Int {
    case North
    case South
    case East
    case West
    
    func name() -> String {
        switch self {
        case .North: return "North"
        case .South: return "South"
        case .East: return "East"
        case .West: return "West"
        }
    }
}

var dir : Direction

dir = Direction.East
dir.rawValue
dir = .North
dir.rawValue

dir.name()
dir


switch dir {
case .North: print("North")
case .South: print("South")
case .East: print("East")
case .West: print("West")
}

enum City: String {
    case Barcelona = "Barcelona"
    case Atlanta = "Atlanta"
    case Sydney = "Sydney"
    case Athens = "Athens"
    case Beijing = "Beijing"
    case London = "London"
    case Rio_de_Janeiro = "Rio de Janeiro"
    case Tokyo = "Tokyo"
    var name: String { return self.rawValue }
}

let hostCityYear: [City: Int] = [
    .Barcelona: 1992,
    .Atlanta: 1996,
    .Sydney: 2000,
    .Athens: 2004,
    .Beijing: 2008,
    .London : 2012,
    .Rio_de_Janeiro: 2016,
    .Tokyo: 2020
]

for (c, _) in hostCityYear {
    print("City:", c.rawValue)
}


for (city, year) in hostCityYear {
    print(city.name, year < 2016 ? "hosted" : "will host",
        "the Olympic Games in \(year)")
}

for (city, year) in hostCityYear.sort({ (cy1: (City, Int), cy2: (City, Int) ) -> Bool in cy1.1 < cy2.1 })   {
    print(city.name, year < 2016 ? "hosted" : "will host",
        "the Olympic Games in \(year)")
}



//: [Next](@next)
