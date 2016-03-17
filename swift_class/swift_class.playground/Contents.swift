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


/// Getter, Setter
class Class3 {
    var _value: Int = 1
    var value: Int {
        get {
            return self._value * 100
        }
        set {
            self._value = newValue
        }
    }
}
var valueClass3 = Class3()
print(valueClass3.value)
valueClass3.value = 2
print(valueClass3.value)