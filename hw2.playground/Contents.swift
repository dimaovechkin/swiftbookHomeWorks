import UIKit

var greeting = "Hello, playground"

// Задание 1
let number1 : Float = 3.14
let number2 : Float = 42.0
let number3 : Double = Double(number1) + Double(number2)
print(number3)

// Задание 2
var numberOne = 5
var numberTwo = 2
var result = numberOne / numberTwo
var remainder = numberOne % numberTwo
print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")
print("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)")

// Задание 3
let dayOfBirth : Int = 6
let mounthOfBirth = 9
let yearOfBirth = 1994

let yearLive = 2023 - yearOfBirth
let mounthLive = yearLive * 12
let dayLive = mounthLive * 30

let score = ("\(yearLive) years, \(mounthLive) mounths, \(dayLive) days have passed since my birth" )
print(score)

if mounthOfBirth > 0 && mounthOfBirth <= 3 {
    print("1 квартал")
} else if mounthOfBirth > 3 && mounthOfBirth <= 6 {
    print("2 квартал")
} else if mounthOfBirth > 6 && mounthOfBirth <= 9 {
    print("3 квартал")
} else if mounthOfBirth > 9 && mounthOfBirth <= 12 {
    print("4 квартал")
}

// Задание 4

let depositAmount: Double =  20000
let rateProcent: Double = 3
let year: Int = 5

let percent = rateProcent * Double(year)

print("Выплата по депозиту суммой \(depositAmount) (cтавка \(rateProcent)%) через \(year) лет будет \(percent) %")
