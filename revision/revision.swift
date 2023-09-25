class Person{
    var name: String
    init(name: String){
        self.name = name
    }
}

let person1 = Person(name: "Abj")
let person2 = Person(name: "Abj")
let person3 = person1

// print(person1 == person2)
// print(person1 === person2)
print(person1 === person3)

// Binary search

func BinarySearch(value: Int, arr: [Int]){
    var left = 0
    var right = arr.count - 1
    var middle: Int
    while(left<=right){
        middle = (left+right)/2
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


BinarySearch(value: 5, arr: [1,2,3,4])

//swap values

func swapInt(_ a: inout Int, _ b: inout Int){
    (a , b) = (b, a)
}

var val1 = 1
var val2 = 2
print("Before swapping: val1 = \(val1) val2 = \(val2)")
swapInt(&val1, &val2)
print("After swapping: val1 = \(val1) val2 = \(val2)")


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


let pn = 5
let pr = 3
let nPr = permutations(pn, pr)
print("\(pn)P\(pr) = \(nPr)")


//Combinations
//n!/r!*(n-r)!
func combinations(_ n: Int, _ r: Int) -> Int {
    guard n >= r else { return 0 }
    return factorial(n) / (factorial(r) * factorial(n - r))
}


let cn = 5
let cr = 3
let nCr = combinations(cn, cr)
print("\(cn)C\(cr) = \(nCr)")
