import UIKit

var greeting = "Hello, playground"


//Задание 1

class Figure {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    init(radius: Float){
        self.radius = radius
    }
    
    func squareOfFigure() -> Float { square }
    
    func perimeterOfFigure() -> Float { perimeter }
}
    

class Circle: Figure {
    override func squareOfFigure() -> Float {
        square = Float.pi * radius * radius
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = 2 * Float.pi * radius
        return perimeter
    }
    func description() {
        print("Площаль окружности равна \(squareOfFigure()), периметр равен \(perimeterOfFigure())")
    }
}

class Rectangle: Figure {
    override func squareOfFigure() -> Float {
        square = height * width
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = (height * width) * 2
        return perimeter
    }
    func description() {
        print("Площадь прямоугольника равна \(squareOfFigure()), периметр равен \(perimeterOfFigure())")
    }
    
}

class Ellipse: Figure {
    override func squareOfFigure() -> Float {
        square = Float.pi * height * width
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = Float.pi * (height + width)
        return perimeter
    }
    func description() {
        print("Площадь окружности равна \(squareOfFigure()), длина равна \(perimeterOfFigure())")
    }
    }


let rectangle = Rectangle(height: 6, width: 9)
let circle = Circle(radius: 6)
let elipse = Ellipse(height: 2, width: 5)

rectangle.description()
circle.description()
elipse.description()

