// If statement
let number = 7
if number > 5 {
    print("Number is greater than 5")
} else {
    print("Number is not greater than 5")
}

// For loop
for i in 1...5 {
    print("Current value of i in loop: \(i)")
}

for j in 1..<8 {
    print("Current value of j in loop: \(j)")
}

// While loop
var counter = 0
while counter < 5 {
    print("Counter value: \(counter)")
    counter += 1
}

// Repeat-while loop
var repeatCounter = 0
repeat {
    print("Repeat counter value: \(repeatCounter)")
    repeatCounter += 1
} while repeatCounter < 3

// Switch statement
let day = "Monday"
switch day {
    case "Monday":
        print("It's Monday!")
    case "Tuesday":
        print("It's Tuesday!")
    default:
        print("It's another day")
}

