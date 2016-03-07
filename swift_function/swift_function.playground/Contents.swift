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


/// Default parameter
func func5(value: Int = 4) {
    print(value)
}
func5(2)
func5()