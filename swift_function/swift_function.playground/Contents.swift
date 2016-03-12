//: Playground - noun: a place where people can play

import UIKit

func func1() {
    print("a")
}
func1()

func func2(v: String) {
    print(v)
}
func2("a")

func func3(v: String) -> String {
    return "v: \(v)"
}
print(func3("a"))


/// Outer function's arguments
func func4(count c: Int) {
    print(c)
}
func4(count: 4)


/// Default parameters
func func5(value: Int = 4) {
    print(value)
}
func5(2)
func5()


/// variable parameters
func func6(values: Int...) {
    print(values)
}
func6(1)
func6(1,2)
func6(1,2,3)

//// variable parameters with label parameters
func func7(values: Int..., value1: Int, value2: Int) {
    print("\(values), value1: \(value1), value2: \(value2)")
}
func7(1, value1: 10, value2: 11)
func7(1,2, value1: 10, value2: 11)
func7(1,2,3, value1: 10, value2: 11)


/// Constant parameters and variable parameters
func func8(value: Int) {
    // value += 3 // Error
    print(value)
}
func8(1)

func func9(var value: Int) {
    value += 3 // OK
    print(value)
}
func9(1)


/// Lambda
func func10(a: Int, b: Int, f: (Int, Int) -> Int) -> Int {
    return f(a, b)
}
print(func10(2, b: 3, f: {(v1: Int, v2: Int) in return v1 * v2}))
print(func10(2, b: 3, f: {(v1, v2) in return v1 * v2}))
print(func10(2, b: 3, f: {(v1, v2) in v1 * v2}))
print(func10(2, b: 3, f: { $0 * $1 }))
print(func10(2, b: 3, f: *))
print(func10(2, b: 3){ $0 * $1 })
