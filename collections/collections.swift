// Arrays
var arr1: [Int] = Array()
var arr = [1, 2, 3]
arr.append(4)
print(arr)  // Output: [1, 2, 3, 4]

arr.remove(at: 1)
print("Element present at second index: \(arr[1])") 

// Sets
var set2: Set<Int> = []
var set1: Set<String> = ["apple", "banana", "orange"]
set1.insert("grape")
set1.remove("banana")
print(set1.sorted())  

// Dictionaries
var dict: [String: Int] = [:]
var dictionary = ["name": "Ben"]
dictionary["city"] = "Cochin"
dictionary["profession"] = "sde"
print(dictionary)  

dictionary.removeValue(forKey: "city")
print(dictionary)  

// Additional Methods

// Arrays
print("Array count:", arr.count)  
print("Array contains 2:", arr.contains(2))  
print("Array reversed:", arr.reversed())  

// Sets
print("Set count:", set1.count) 
print("Set contains 'apple':", set1.contains("apple"))  

// Dictionaries
print("Dictionary keys:", dictionary.keys)  
print("Dictionary values:", dictionary.values) 

// Looping through Collections

// Arrays
for element in arr {
    print("Array element:", element)
}

// Sets
for fruit in set1 {
    print("Set element:", fruit)
}

// Dictionaries
for (key, value) in dictionary {
    print("Dictionary key:", key, "value:", value)
}
