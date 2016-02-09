//: Playground - noun: a place where people can play

import UIKit

print(1+2) // addition
print(5-3) // subtraction
print(2*3) // multiplication
print(4/2) // division
print(5%2) // residue

var value_operation1 = 3
print(++value_operation1)  // increment
print(value_operation1++)  // increment
value_operation1+=2; print(value_operation1) // increment
print(--value_operation1)  // decrement
print(value_operation1--)  // decrement
value_operation1-=3; print(value_operation1) // decrement


// Overflow operator
// It allows to overflow the value of a variable.
var value_operator2 = Int8.max
// print(value_operator2 + 1) // error: overflow
print(value_operator2 &+ 1) // OK: -128


// Conparsion operator
print(2 == 3)
print(2 != 3)
print(2 >  3)
print(2 <  3)
print(2 >= 3)
print(2 <= 3)

print(1 == "1")
print(nil == false)
print(0 == nil)

print(0 ==  false)
print(0 === false)
print(1 ==  true)
print(1 === true)
print(0 !=  false)
print(0 !== false)
print(1 !=  true)
print(1 !== true)


// Bit operator(same as C language)
let value_bit1: UInt8 = 0b00001111
let value_bit2 = ~value_bit1 // 0b11110000
print(String(format: "%02x", value_bit1))
print(String(format: "%02x", value_bit2))

print(String(format: "%02x", 0b00001111 & 0b00111100)) // AND
print(String(format: "%02x", 0b00001111 | 0b00111100)) // OR
print(String(format: "%02x", 0b00001111 ^ 0b00111100)) // XOR

print(String(format: "%04x", UInt(0b11001100) << 2))
print(String(format: "%04x", UInt(0b11001100) >> 2))
print(String(format: "%04x",  Int(0b11001100) << 2))
print(String(format: "%04x",  Int(0b11001100) >> 2))