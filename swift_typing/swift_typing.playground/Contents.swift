//: Playground - noun: a place where people can play

import UIKit

// Integer type
/// Typings
var value_int8: Int8
value_int8 = 127
//value_int8 = 128 // overflow error

var value_uint8: UInt8
value_uint8 = 255
//value_uint8 = -1 // under flow error

/// Int info
print(Int.min, Int.max) // A maximum/minimum value of int type in your execution environment

/// Literals
print(123)     // Digit
print(0123)    // Digit zero filled
print(123_456) // Digit with thousands separator
print(0xff)    // Hex
print(0o10)    // Octet
print(0b0100)  // Binary


// Float type
var value_double = 1.5
var value_float: Float = 2.5

/// Literals
print(150.5)     // Digit
print(1.505e2)   // Digit that has been exponential notation
print(0150.5)    // Digit zero filled
print(150_000.5) // Digit with thousands separator
print(0xc.3p2)   // Hex that has been exponential notation
print((12*pow(16,0) + 3.0*pow(16,-1)) * pow(2,2)) // 👆 (12*16^0 + 3*16^-1) * 2^2


// Type conversion
/// for literals
var value_conversion_1 = 1 + 1.5 // Implecit convert

/// for variables and constants
var value_conversion_2 = 1
var value_conversion_3 = 1.5
//var value_conversion_4 = value_conversion_2 + value_conversion_3 // Error: Can not implecit convert
var value_conversion_5 = Double(value_conversion_2) + value_conversion_3


// Tuple type
let value_tuple1 = ("a", 1)
print("\(value_tuple1.0), \(value_tuple1.1)")

var (value_tuple_element1, value_tuple_element2) = ("a", 1)
print(value_tuple_element1, value_tuple_element2)

var value_tuple2 = (a: 1, b: 2)
print("\(value_tuple2.b)")


// Array type
var value_array1: [Int] = [1,2,3]
print(value_array1)
print(value_array1[0])

/// fill
var value_array2 = Array(count: 4, repeatedValue: 2)
print(value_array2)

/// Any element types
var value_array3: Array<Any> = [1, 1.4, "a"]
print(value_array3)
print(1 + (value_array3[0] as! Int))

/// Function element types
let add = { (a: Double, b: Double) -> Double in return a + b }
let sub = { (a: Double, b: Double) -> Double in return a - b }
var value_array4: [(Double, Double) -> Double] = [add, sub]
print(value_array4[1](10, 20))

/// Empty array
var value_array5: [String] = []
var value_array6: Array<String> = []

/// Add
var value_array7: [Double] = [1,2,3]
value_array7.append(4)
value_array7 += [5,6]
//value_array7.append("7") // type error
value_array7.insert(1.5, atIndex: 1)
print(value_array7)

/// Refer elements
var value_array8 = [1,2,3,4,5]
print(value_array8[0])
print(value_array8[1..<3]) // It does not contain the element of the end index
print(value_array8[1...3]) // It contains the element of the end index

/// Remove elements
var value_array9 = [1,2,3,4,5,6,7,8,9]
value_array9.removeLast()
print(value_array9)
value_array9.removeFirst()
print(value_array9)
value_array9.removeAtIndex(1)
print(value_array9)
value_array9.removeRange(2...4)
print(value_array9)
value_array9.removeAll()
print(value_array9)

/// Iterate elements
var value_array10 = [1,2,3,4]
for v in value_array10 {
    print(v)
}
for (i,v) in value_array10.enumerate() {
    print(i,v)
}

/// Clone
var value_array11 = [1,2,3]
var value_array12 = value_array11 // deep copy
value_array11.append(4)
print(value_array11)
print(value_array12)


// Dictionary type
// A dictionary does not keep keys order.
let value_dictionary1: Dictionary<String, Int> = ["a": 1, "b": 2, "c": 3]
print(value_dictionary1["a"]) // optional(1)
print(value_dictionary1["d"]) // nil

let value_dictionary2: [String: Int] = ["a": 1, "b": 2, "c": 3]
print(value_dictionary2["b"])

/// Add, Modify
var value_dictionary3: [String: Float] = ["a": 1, "b": 2, "c": 3]
value_dictionary3["d"] = 4
value_dictionary3["b"] = 2.1
print(value_dictionary3.count)
print(value_dictionary3.updateValue(3.1, forKey: "c"))
print(value_dictionary3.count)
print(value_dictionary3.updateValue(5.0, forKey: "e"))
print(value_dictionary3.count)
print(value_dictionary3)

/// Remove
var value_dictionary4 = ["a": 1, "b": 2, "c": 3]
print(value_dictionary4.count)
value_dictionary4["b"] = nil
print(value_dictionary4.count)
print(value_dictionary4)
print(value_dictionary4.removeValueForKey("a"))
print(value_dictionary4.count)
value_dictionary4.removeAll()
value_dictionary4 = [:] // reinitialize
print(value_dictionary4.count)
print(value_dictionary4)

/// Iterate
var value_dictionary5 = ["a": 1, "b": 2, "c": 3]
for (key, value) in value_dictionary5 {
    print("\(key): \(value)")
}
for key in value_dictionary5.keys {
    print(key)
}
for value in value_dictionary5.values {
    print(value)
}

/// Copy
var value_dictionary6 = ["a": 1, "b": 2, "c": 3]
var value_dictionary7 = value_dictionary6 // Deep copy
value_dictionary7["d"] = 4
print(value_dictionary6)
print(value_dictionary7)