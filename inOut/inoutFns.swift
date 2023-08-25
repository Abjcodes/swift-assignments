func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 1
var y = 11

print("Before swapping: x =", x, "y =", y)
swapValues(&x, &y)
print("After swapping: x =", x, "y =", y)

