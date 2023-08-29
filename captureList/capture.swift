class Person {
    let name: String
    var greeting: (() -> Void)?

    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }

    deinit {
        print("\(name) is being deallocated")
    }
}

var person: Person? = Person(name: "Alice")

person?.greeting = { [weak person] in
    if let person = person {
        print("Hello, \(person.name)!")
    } else {
        print("Person is nil.")
    }
}

person?.greeting?()  // Prints "Hello, Alice!"

person = nil  // The Person instance will be deallocated, breaking the strong reference cycle
