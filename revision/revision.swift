class Person{
    var name: String
    init(name: String){
        self.name = name
    }
}

let person1 = Person(name: "Abj")
let person2 = Person(name: "Abj")
let person3 = person1

// Equality operator - values
// print(person1 == person2)
// print(person1 === person2)
// Identity operator - memory references
print(person1 === person3)

// Binary search

func BinarySearch(value: Int, arr: [Int]){
    var left = 0
    var right = arr.count - 1
    var middle: Int
    while(left<=right){
        middle = (left+right)/2
        print("middle index \(middle), Left index \(left), Right index \(right)")
        if(arr[middle] == value){
            print("Element found at position \(middle+1)")
            return
        }
        else if(arr[middle] < value){
            left = middle+1
        }
        else{
            right = middle-1
        }
    }
    print("Element not found")
}


BinarySearch(value: 2, arr: [1,2,3,4,5])

//swap values

// Tuple Deconstruction

var val1 = 1
var val2 = 2
print("Before swapping: val1 = \(val1) val2 = \(val2)")
(val1, val2) = (val2, val1)
print("After swapping: val1 = \(val1) val2 = \(val2)")

// xor

var a = 10
var b = 5

a = a ^ b
b = a ^ b
a = a ^ b

print("The values: a = \(a) and b  = \(b)")

a = 10
b = 5

a = a+b
b = a-b
a = a-b

print("The values: a = \(a) and b  = \(b)")


// Circular reference

class Student {
    let name: String
    weak var apartment: Classes?

    init(name: String) {
        self.name = name
        print("\(name) is being initialized.")
    }

    deinit {
        print("\(name) is being deinitialized.")
    }
}

class Classes {
    let unit: String
    weak var occupant: Student?

    init(unit: String) {
        self.unit = unit
        print("Apartment \(unit) is being initialized.")
    }

    deinit {
        print("Apartment \(unit) is being deinitialized.")
    }
}

var std: Student? = Student(name: "Abj")
var cls: Classes? = Classes(unit: "1bhk")

std?.apartment = cls
cls?.occupant = std

std = nil
cls = nil

//Permutations
//n!/(n-r)!
func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * factorial(n - 1)
}

func permutations(_ n: Int, _ r: Int) -> Int {
    guard n >= r else { return 0 }
    return factorial(n) / factorial(n - r)
}

let pn = 3
let pr = 5
let nPr = permutations(pn, pr)
print("\(pn)P\(pr) = \(nPr)")

//Combinations
//n!/r!*(n-r)!
func combinations(_ n: Int, _ r: Int) -> Int {
    guard n >= r else { return 0 }
    return factorial(n) / (factorial(r) * factorial(n - r))
}

let cn = 3
let cr = 5
let nCr = combinations(cn, cr)
print("\(cn)C\(cr) = \(nCr)")