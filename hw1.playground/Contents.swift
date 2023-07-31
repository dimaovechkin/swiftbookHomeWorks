import UIKit

var str = "Hello, playground"

let http404Error = (404,"Not Found")

let (statusCode, statusMessage) = http404Error
print("Код статсуа: \(statusCode)")
print("Сообщение: \(statusMessage)")

var temperature = 32
if temperature <= 0 {
    print("Очень холодно.")
} else if temperature >= 30 {
    print("На улице очень жарко.")
}
    else {
    print("Не очень холодно.")
}
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


if let firstNumber = Int("4"), let secondNumber =  Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

//1
var firstSring = "I can"
var secondString = "code!"

print(firstSring + " " + secondString)
//2
var myAge = 28
let myAgeitTenYears: Int = myAge+10
var daysInYear: Float = 362.25
let daysPassed: Float = Float(myAgeitTenYears) * daysInYear
print("Мой возраст \(myAge) лет. Через 10 лет, мне будет \(myAgeitTenYears) лет, с момента моего рождения пройдет \(daysPassed) дней")
//3
let catetTriangleAc: Double = 8
let kvAc = pow(catetTriangleAc, 2)
let catetTriangleCb: Double = 6
let kvCb = pow(catetTriangleCb, 2)
let hypotenuse = sqrt(kvAc+kvCb)
print(hypotenuse)
