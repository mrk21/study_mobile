//: Playground - noun: a place where people can play

import UIKit

// variable
var variable = "value1"
print(variable)
variable = "value2"
print(variable)

// constant
let constant = "const1"
print(constant)
//constant = "const2" // error

// multibyte identifier names
var 日本語 = "🆖"
print(日本語)

var 😰 = "🆖"
print(😰)


// typing
var value1: String
// var value2: String = 10 // error


// expand variables in string
var name = "hoge"
var age = 45
print("\(name) => \(age)")
