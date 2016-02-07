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