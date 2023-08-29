// If statement
// let number = 4

// // if condition {
// //     // code
// // } else if (condition) {
// //     // code
// // } else {
// //     // code
// // }

// if number > 5 {
//     print("Number is greater than 5")
// } else {
//     print("Number is not greater than 5")
// }

// // For loop
// for i in 1...5 {
//     print("Current value of i in loop: \(i)")
// }

// for j in 1..<8 {
//     print("Current value of j in loop: \(j)")
// }

// // While loop
// var counter = 0

// while counter < 5 {
//     print("Counter value: \(counter)")
//     counter += 1
// }

// // Repeat-while loop
// var repeatCounter = 0
// repeat {
//     print("Repeat counter value: \(repeatCounter)")
//     repeatCounter += 3
// } while repeatCounter < 31

// Switch statement
// let day = "Wednesday"

// switch day {
//     case "Monday":
//         print("It's Monday!")
//         fallthrough
//     case "Tuesday":
//         print("It's Tuesday!")
//     case "Wednesday":
//         break
//         print("Its wednesday!")
//         // continue
//         print("Today is wednesday")
//     default:
//         print("It's another day")
// }

// show multiple pattern matching

// show defer

func processTask() {
    print("Task started")

    defer {
        print("Task is completed")
    }

    defer {
        print("Task 1")
    }
    defer {
        print("Task 2")
    }
    defer {
        print("Task 3")
    }
    
    print("Performing task...")

}

processTask()

// Inheritance

