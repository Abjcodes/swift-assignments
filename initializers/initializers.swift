// Designated initializers - Primary initializers for a class.
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Student: Person {
    var studentID: Int

    init(name: String, studentID: Int) {
        self.studentID = studentID
        super.init(name: name)
    }
}

// Convenience initializers - Provide a way to create an instance with a more limited set of parameters. 

class Adult {
    var name: String

    init(name: String) {
        self.name = name
    }

    convenience init() {
        self.init(name: "Unknown")
    }
}

// Failable initializers - can return nil if initialization fails, usually due to invalid input. 

struct Temperature {
    var celsius: Double

    init?(celsius: Double) {
        if celsius < -273.15 {
            return nil  // Temperature too low for valid Celsius
        }
        self.celsius = celsius
    }
}

// Automatic initializers - automatically generates a default memberwise initializer for structures. Takes parameters for all the properties in the structure and initializes them.

struct Point {
    var x: Double
    var y: Double
}

let origin = Point(x: 0.0, y: 0.0)  // Automatic memberwise initializer
