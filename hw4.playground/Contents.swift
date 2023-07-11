import UIKit

var greeting = "Hello, playground"

//Задание 1

var deposit: Double = 500000
let rate: Double = 11
let period = 5
var profit: Double = 0



for _ in 1...period {
    let currentProfit = deposit * rate / 100
    profit += currentProfit
    deposit += currentProfit
}

print("Сумма вклада черех \(period) лет увеличится на \(Int(profit)) и составит \(Int(deposit)) рублей" )


//Задание 2

var base = 2
var power = 4
var result = 1

for _ in 0..<power {
    result *= base
}
print(result)


// Задание 3

let numbers = [ 1, 2, 3, 4, 5]
for number in numbers {
    if number % 2 == 0 {
        print("Четные: \(number)")
    }
    
}
for number in numbers {
    if number % 2 == 0 {
        continue
    }
    print("Нечетные: \(number)")
}

//Задание 4

for  counter in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
        print("Чтобы выпало число 5 понадобилось \(counter) итераций")
        break
    }
}

//Задание 5

//O(n^2)
