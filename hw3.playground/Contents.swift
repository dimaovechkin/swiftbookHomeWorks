import UIKit

var greeting = "Hello, playground"


//Задание 1

var sumOfProducts = 1000
var valueOfProducts = 15
var valueOfSell = sumOfProducts * valueOfProducts
if valueOfProducts < 10 {
    sumOfProducts = 1000
} else if valueOfProducts < 20 {
    sumOfProducts = 800
} else {
    sumOfProducts = 600
}
print("Коллчиество: \(valueOfProducts) шт, цена: \(sumOfProducts) рублей, общая сумма: \(valueOfSell) рублей")
 

//Задание 2



let str = "25"
let someNum = Int(str)
if let value = someNum {
    print(value)
}

let userInputAge: String = "34e"
let userAge = Int(userInputAge)
if let value = userAge {
    print(value)
}

//Задание 3

let mountOfBirth = 9
switch mountOfBirth {
case 1...3:
    print("Вы родились в 1 квартале")
case 4...6:
    print("Вы родились в 2 квартале")
case 7...9:
    print("Вы родились в 3 квартале")
case 10...12:
    print("Вы родились в 4 квартале")
default:
    print("Ошибка")
}

// Задание 4
enum Security {
    case a, b, c
}

let securityLevel: Security = .a
switch securityLevel {
case .a:
    print("Включить все приборы")
    fallthrough
case .b:
    print("Закрыть двери и окна")
    fallthrough
case .c:
    print("Соблюдать спокойсвтие")
}

// Задание 5
let phoneNumber = "+791594588"
let russianNumberLength = 12
let russianNumberPrefix = "+7"

switch phoneNumber.count {
case russianNumberLength where phoneNumber.starts(with: russianNumberPrefix):
    print("Номер российский")
case ..<russianNumberLength:
    print("Дополните строку на \(russianNumberLength - phoneNumber.count) символов")
case (russianNumberLength + 1)...:
    print("Сократите строку на \(phoneNumber.count - russianNumberLength) символов")
default:
    print("Номер не росскийский")
}

// Задание 6
enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}
let numberOne = 2
let numberTwo = 3
let calculationType: CalculationType = .addition

var result = numberOne
switch calculationType {
case .addition:
    result += numberTwo
case.subtraction:
    result -= numberTwo
case .multiplication:
    result *= numberTwo
case .division:
    numberTwo != 0 ? result /= numberTwo : print("На ноль делить нельзя")
}
print("Результат \(calculationType.rawValue) \(numberOne) и \(numberTwo) равен \(result)")



enum CurrencyUnit {
    case rouble
    case dollar(national: DollarCountries)
    case euro
    enum DollarCountries: String {
        case usa = "США"
        case canada = "Канада"
        case australia = "Австралия"
    }
}

let currency: CurrencyUnit = .dollar(national: .canada)
 
