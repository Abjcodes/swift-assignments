// Value type in structs
struct CarStruct {
    var color: String
}

var originalCarS = CarStruct(color: "Red")
var stolenCarS = originalCarS

stolenCarS.color = "Blue"

print("In structs")
print("Color of the original car \(originalCarS.color)")
print("Color of the stolen car \(stolenCarS.color)")

//Reference type in classes

class CarClass {
    var color: String
    init(color: String){
        self.color = color
    }
}

var originalCarC = CarClass(color: "Red")
var stolenCarC = originalCarC

stolenCarC.color = "Blue"

print("In classes")
print("Color of the original car \(originalCarC.color)")
print("Color of the stolen car \(stolenCarC.color)")