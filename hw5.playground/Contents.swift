import UIKit

var greeting = "Hello, playground"

//Задание 1

let gameDictionary = [
    "авангард" : ["2:1", "2:3"],
    "салават юлаев" : ["3:3", "2:3"],
    "акбарс" : ["2:3", "1:3"]
]
for (teamName, results) in gameDictionary {
    for result in results {
        print("Игра с \(teamName) - \(result)")
    }
}


//Задание 2

func calculateTimeInterval (fromDay day:Int, month: Int, year: Int) {
    let currentDate = Date()
    let calendar = Calendar.current
    let dateComponents = DateComponents(year: year, month: month, day: day)
    
    if let someDateTime = calendar.date(from: dateComponents) {
        let dayPassed = calendar.dateComponents([.day], from: someDateTime, to:
                                                    currentDate).day ?? 0
        let monthPassed = calendar.dateComponents([.month], from: someDateTime, to :
                                                    currentDate).month ?? 0
        let yearPassed = calendar.dateComponents([.year], from: someDateTime, to :
                                                    currentDate).year ?? 0
        
        print("\(yearPassed) years, \(monthPassed) months and \(dayPassed) days have passed since")
    }
    
}
calculateTimeInterval(fromDay: 12, month: 12, year: 1999)

// Задание 3

func calculationCash(inWallet wallet:[Int]) -> Int {
    var totalCash = 0
    for banknote in wallet {
        totalCash += banknote
    }
    return totalCash
}

var wallet = [50, 100, 150, 1000, 50, 500]
calculationCash(inWallet: wallet)
