// Arrays
var arr = [1, 2, 3]
arr.append(4)
print(arr)
arr.remove(at: 1)

// Sets
var set1: Set<String> = ["apple", "banana", "orange"]
set1.insert("grape")
set1.remove("banana")

// Dictionaries
var dictionary = ["name": "Ben"]
dictionary["city"] = "Cochin"
dictionary["profession"] = "sde"
print(dictionary)
dictionary.removeValue(forKey: "city")
print(dictionary)

print("Array:", arr)      
print("Set:", set1)             
print("Dictionary:", dictionary) 
