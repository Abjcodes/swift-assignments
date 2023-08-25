//Arithmetic

let a = 10
let b = 5

print("Addition:", a + b)        
print("Subtraction:", a - b)
print("Multiplication:", a * b) 
print("Division:", a / b)  

//logical
let x = true
let y = false

print("Logical AND:", x && y)  
print("Logical OR:", x || y)    
print("Logical NOT:", !x) 

//Ranges
let closedRange = 1...5
let halfOpenRange = 1..<5

print("Closed Range:", Array(closedRange))    
print("Half-Open Range:", Array(halfOpenRange))

for i in 1...5{
    print(i)
}

//Ternary operator
var p = 5

var k = (p == 5) ? "Its 5" : "Its not 5"

print(k)

//String operations

var str1 = "Hi"
var str2 = "John"

print("\(str1) \(str2)")

//Comparison operators
let num1 = 10
let num2 = 5

print("Is Equal:", num1 == num2)
print("Is Not Equal:", num1 != num2)
print("Is Greater Than:", num1 > num2)
print("Is Less Than:", num1 < num2)
print("Is Greater Than or Equal:", num1 >= num2)
print("Is Less Than or Equal:", num1 <= num2)

//Type casting
let stringValue = "123"
let intValue = Int(stringValue)

print(intValue)

//Reminder
print(3%2)