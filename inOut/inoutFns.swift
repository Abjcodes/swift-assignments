func swapValues(_ a: inout Int, _ b: inout Int) -> (Int, Int) {
    let temp = a
    a = b
    b = temp
    return (a, b)
}

var x = 1
var y = 11

print("Before swapping: x =", x, "y =", y)
// swapValues(&x, &y)
// print("After swapping: x =", x, "y =", y)
var (x1, y1) = swapValues(&x, &y)
print("After swapping: x =", x1, "y =", y1)