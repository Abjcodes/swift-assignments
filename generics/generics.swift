protocol MyProtocol {
    func printDescription()
}

class ConformingClass: MyProtocol {
    func printDescription() {
        print("This is a conforming class.")
    }
}

// Non-conforming class
class NonConformingClass {
    // This class doesn't conform to the MyProtocol protocol
}

// Generic function with a type constraint
func printUsingConstraint<T: MyProtocol>(value: T) {
    value.printDescription()
}

// Usage
let conformingInstance = ConformingClass()
let nonConformingInstance = NonConformingClass()

printUsingConstraint(value: conformingInstance)      
