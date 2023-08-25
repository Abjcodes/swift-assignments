// Method overriding

class Shape {
    func area() -> Double {
        return 0.0
    }
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func area() -> Double {
        return width * height
    }
}

let circle = Circle(radius: 7.25)
print("Circle area:", circle.area()) 

let rectangle = Rectangle(width: 4.9, height: 6.8)
print("Rectangle area:", rectangle.area()) 


//Method overloading

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func add(_ a: String, _ b: String) -> String {
        return a + b
    }
}

let calculator = Calculator()

print(calculator.add(2, 3))             // Calls the first add method
print(calculator.add(2.5, 3.7))         // Calls the second add method
print(calculator.add("This", " is concatenated")) // Calls the third add method
