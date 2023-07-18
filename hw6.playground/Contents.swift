import UIKit

var greeting = "Hello, playground"
//Задание 1





class Orange {
    var color = ""
    var taste = " "
    var radius = 0.0
    
    var orangeVolume = 0.0
    init() {}
    
    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
   
    func calculateOrangeVolume() {
        orangeVolume = 4 / 3 * Double.pi * pow(radius, 3)
        print("Jбъем апельсина составляет \(orangeVolume)")
    }
}

let someOrange = Orange()

someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.radius = 95
print("Orange has \(someOrange.color) color and \(someOrange.taste) taste")
someOrange.calculateOrangeVolume()
print(someOrange.orangeVolume)


//Задание 2
struct Car {
    var name: String
    let productionYear: Int
    var horsePower: Int
}

let honda = Car(name: "Honda", productionYear: 2016, horsePower: 132)
var hondaCivic = honda
hondaCivic.name = "Honda Civic"

for _ in 1...5 {
    hondaCivic.horsePower += 1
}
print("Мощность двигателя \(honda.name) составляет \(honda.horsePower) лошадей")

//Задание 3

struct PlayerInChess {
    let name: String
    var wins: Int
    
    
    mutating func addWins(countOfWins: Int) {
        wins += countOfWins
    }
    func printDescription() {
        print("Игрок \(name), имеет \(wins) побед")
    }
}
var playerInchess = PlayerInChess(name: "Dima", wins: 3)
playerInchess.printDescription()
playerInchess.addWins(countOfWins: 3)
playerInchess.printDescription()

//Задание 4


