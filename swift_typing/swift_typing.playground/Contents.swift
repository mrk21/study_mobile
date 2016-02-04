//: Playground - noun: a place where people can play

import UIKit

// Integer type
var value_int8: Int8
value_int8 = 127
//value_int8 = 128 // overflow error

var value_uint8: UInt8
value_uint8 = 255
//value_uint8 = -1 // under flow error

print(Int.min, Int.max) // A maximum/minimum value of int type in your execution environment

print(0xff) // hex literal
print(0o10) // octet literal
print(0b0100) // binary literal
print(0123)
print(123_456)