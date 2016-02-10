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

let value_tuple2 = (a:1)
print("\(value.a)")