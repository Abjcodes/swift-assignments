// Self contained blocks of functionality which can be passed around

// (input type) -> (output type) = { parameters: type in 
//     // code
// }

var printClosure: (String) -> (String) = { name in
    return "Hi \(name)"
}

print(printClosure("Abj"))

//Trailing closure syntax - Syntax can be omitted if the closure is the trailing parameter

struct Person{
    var name: String
    var age: Int
}

var population = [
    Person(name: "John", age: 20 ),
    Person(name: "James", age: 17 ),
    Person(name: "Aaron", age: 30 ),
    Person(name: "Carlson", age: 16 )
]

let pplWhoVote = population.filter{ person in
    return person.age >= 18 
}

print(pplWhoVote)


//shorthand arguments 

let pplWhoVote2 = population.filter{ $0.age >= 18 }


print(pplWhoVote2)

//Escaping closures

func doSomething(completion: @escaping () -> ()) {
    print("Performing some task...")

    completion()
}

doSomething {
    print("Completion closure executed!")
}

//Asynchronous example
// https://replit.com/join/mwwkwilfsu-abijithvasantha

//Autoclosures

func autoclosurePrint(_ name: @autoclosure () -> String){
    let getName = name()
    print("The name \(getName) is printed using an autoclosure function")
}

autoclosurePrint("Abj")