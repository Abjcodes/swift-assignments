// Single responsibility principle - A class should have only one responsibility

// before

class FileManager {
    func saveData(data: Data, toFile file: String) {
        // Code to save data to a file
    }
    
    func parseData(data: Data) -> Model {
        // Code to parse data into a model
    }
}

//after

class DataSaver {
    func saveData(data: Data, toFile file: String) {
        // Code to save data to a file
    }
}

class DataParser {
    func parseData(data: Data) -> Model {
        // Code to parse data into a model
    }
}

// Open closed principle - Classes should be open for extension but closed for modification

//before

class Shape {
    func calculateArea() -> Double {
        return 0.0
    }
}

class Circle: Shape {
    var radius: Double = 0.0
    
    override func calculateArea() -> Double {
        return 3.14 * radius * radius
    }
}

// after
protocol AreaCalculatable {
    func calculateArea() -> Double
}

class Circle: AreaCalculatable {
    var radius: Double = 0.0
    
    func calculateArea() -> Double {
        return 3.14 * radius * radius
    }
}

class Square: AreaCalculatable {
    var sideLength: Double = 0.0
    
    func calculateArea() -> Double {
        return sideLength * sideLength
    }
}

// Liskov subsitution priniple - Objects of a derived class should be able to replace objects of the base class without affecting the correctness of the program.

//before

class Bird {
    func fly() {
        // Code to make the bird fly
    }
}

class Ostrich: Bird {
    override func fly() {
        // Ostriches can't fly, so this method is inappropriate
    }
}

//after

protocol Flyable {
    func fly()
}

class Bird: Flyable {
    func fly() {
        // Code to make the bird fly
    }
}

class Ostrich: Flyable {
    func fly() {
        // Ostriches can't fly, but the method is appropriately implemented as required by the protocol
    }
}

// Interface Segregation Principle - Interfaces should be broken down and client should not be forced to use the interfaces which they does not use

//before

protocol Worker {
    func work()
    func eat()
}

//after

protocol Workable {
    func work()
}

protocol Eatable {
    func eat()
}

// Dependency Inversion Principle -  High-level modules should not depend on low-level modules. Instead, both should depend on abstractions (interfaces or protocols).

//before

class LightBulb {
    func turnOn() {
        // Code to turn on the light bulb
    }
}

class Switch {
    let bulb = LightBulb()
    
    func operate() {
        bulb.turnOn()
    }
}

// after
protocol Switchable {
    func turnOn()
}

class LightBulb: Switchable {
    func turnOn() {
        // Code to turn on the light bulb
    }
}

class Switch {
    let device: Switchable
    
    init(device: Switchable) {
        self.device = device
    }
    
    func operate() {
        device.turnOn()
    }
}