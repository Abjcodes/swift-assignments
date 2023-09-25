func divide(_ numerator: Int, by denominator: Int) -> Int? {
    guard denominator != 0 else {
        print("Error: Denominator cannot be zero.")
        return nil
    }
    
    return numerator / denominator
}


if let result = divide(10, by: 2) {
    print("Result: \(result)") 
}

if let result = divide(8, by: 0) {
    print("Result: \(result)")
} else {
    print("Division failed.") 
}
