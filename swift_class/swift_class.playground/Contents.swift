//: Playground - noun: a place where people can play

import UIKit

class Class1 {
    var value1 = 1
    
    func display() {
        print(self.value1)
    }
}
var valueClass1 = Class1()
valueClass1.display()

var valueClass2 = valueClass1 // It assigns reference
valueClass2.value1 = 2
valueClass1.display()
valueClass2.display()


/// Initializer, Deinitializer
class Class2 {
    var value1: Int
    
    init(value1: Int) {
        self.value1 = value1
    }
    
    deinit {
        print("deinit")
    }
}
print(Class2(value1: 12).value1)


/// Computed Properties
class Class3 {
    var firstName: String = ""
    var lastName: String = ""
    var name: String {
        get {
            return self.firstName + " " + self.lastName
        }
        set {
            var components: Array<String> = newValue.componentsSeparatedByString(" ")
            self.firstName = components[0]
            self.lastName = components[1]
        }
    }
    init(name: String) {
        self.name = name
    }
}
var valueClass3 = Class3(name: "Hoge Foo")
print(valueClass3.name)
print("firstName: \(valueClass3.firstName), lastName: \(valueClass3.lastName)")
valueClass3.name = "Fuga Bar"
print(valueClass3.name)
print("firstName: \(valueClass3.firstName), lastName: \(valueClass3.lastName)")

//// Read-Only computed properties
class Class4 {
    var w: Int = 0
    var h: Int = 0
    var square: Int {
        return w * h
    }
}
var valueClass4 = Class4()
valueClass4.w = 2
valueClass4.h = 3
print(valueClass4.square)
//valueClass4.square = 10 // Error
valueClass4.w = 5
print(valueClass4.square)

//// Property Observers
class Class5 {
    var value: Int = 0 {
        willSet {
            print("willSet: \(self.value) => \(newValue)")
        }
        didSet {
            print("didSet: \(oldValue) => \(self.value)")
        }
    }
}
var valueClass5 = Class5()
valueClass5.value = 2


//// Lazy Property
class Class6 {
    init() {
        print("property initialized")
    }
}
class Class7 {
    lazy var value = Class6()
}
var valueClass6 = Class7()
print("initialized")
print(valueClass6.value)

//// Decision of whether is the same instance
var valueClass7 = Class4()
var valueClass8 = valueClass5
var valueClass9 = Class4()

print(valueClass7 === valueClass8)
print(valueClass7 === valueClass9)
print(valueClass7 !== valueClass9)

// Struct
struct Struct1 {
    var value: Int = 1
}
print(Struct1())
print(Struct1(value: 2))

/// Copy
struct Struct2 {
    var value: Int
}
var valueStruct1 = Struct2(value: 3)
var valueStruct2 = valueStruct1
valueStruct2.value = 5
print(valueStruct1)
print(valueStruct2)
