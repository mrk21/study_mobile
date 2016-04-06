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


/// Properties
//// Computed Properties
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

//// Type Properties
class Class8 {
    static var value1 = 2
    static var value2: Int {
        return value1 * 2
    }
}
print(Class8.value1)
print(Class8.value2)

/// Decision of whether is the same instance
var valueClass7 = Class4()
var valueClass8 = valueClass5
var valueClass9 = Class4()

print(valueClass7 === valueClass8)
print(valueClass7 === valueClass9)
print(valueClass7 !== valueClass9)

/// Methods
//// Instance Method
class Class9 {
    func f1() {
        print("Class9#f1()")
    }
    func f2(a: Int) {
        print(a)
    }
    func f3(a: Int, b: Int, c: Int) {
        print(a, b, c)
    }
    func f4(a: Int, _ b: Int, _ c: Int) {
        print(a, b, c)
    }
}
Class9().f1()
Class9().f2(1)
Class9().f3(1, b: 2, c: 3)
Class9().f4(1, 2, 3)


//// Mutating Methods (for Struct and Enum)
struct MutatingMethodStruct {
    var value = 1
    // Error
    //func set() {
    //    self.value = 2
    // }
    mutating func set() {
        self.value = 2
    }
}
var mutatingMethodStruct = MutatingMethodStruct()
print(mutatingMethodStruct.value)
mutatingMethodStruct.set()
print(mutatingMethodStruct.value)

///// Assign self
enum MutatingMethodEnum {
    case State1, State2
    mutating func transition() {
        self = self == State1 ? State2 : State1
    }
}
var currentState = MutatingMethodEnum.State1
print(currentState) // State1
currentState.transition()
print(currentState) // State2
currentState.transition()
print(currentState) // State1

//// Static Methods
class StaticMethod {
    static var value = 1
    static func displayValue() {
        print(self.value)
    }
}
StaticMethod.displayValue()


/// Subscript
class Subscript {
    var value = [1,2,3]
    subscript(index: Int) -> Int {
        get {
            return self.value[index]
        }
        set(newValue) {
            self.value[index] = newValue
        }
    }
}
var valueSubscript = Subscript()
print(valueSubscript.value)
print(valueSubscript[1])
valueSubscript[1] = 10
print(valueSubscript.value)

//// Read Only Subscript
class ReadOnlySubscript {
    var value = [1,2,3]
    subscript(index: Int) -> Int {
        return self.value[index]
    }
}
var valueReadOnlySubscript = ReadOnlySubscript()
print(valueReadOnlySubscript.value)
print(valueReadOnlySubscript[1])
// valueReadOnlySubscript[1] = 10 // Error

//// Multi Index Subscript
class MultiIndexSubscript {
    var value = [[1,2],[3,4]]
    subscript(row: Int, column: Int) -> Int {
        get {
            return value[row][column]
        }
        set(newValue) {
            self.value[row][column] = newValue
        }
    }
}
var valueMultiIndexSubscript = MultiIndexSubscript()
print(valueMultiIndexSubscript.value)
print(valueMultiIndexSubscript[0,1])
valueMultiIndexSubscript[1,1] = 10
print(valueMultiIndexSubscript.value)


// Inheritance
class BaseClass {
    var value1: Int
    init() {
        self.value1 = 1
    }
    func displayValue() {
        print(self.value1)
    }
    final func display() {
        self.displayValue()
    }
}

final class DerivedClass: BaseClass {
    var value2: Int
    override init() {
        self.value2 = 2
        super.init()
    }
    override func displayValue() {
        super.displayValue()
        print(self.value2)
    }
    // override func display() {} // Error
}

// class DerivedClass2: DerivedClass {} // Error

var valueDerivedClass = DerivedClass()
valueDerivedClass.displayValue()


// Initializer
/// Convenience Initializer
class ConvenienceInitializer {
    var birthday: Int
    
    init(birthday: Int) {
        self.birthday = birthday
    }
    
    convenience init(age: Int) {
        let now = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy"
        let currentYear = Int(formatter.stringFromDate(now))!
        self.init(birthday: currentYear - age)
    }
}
print(ConvenienceInitializer(birthday: 2000).birthday)
print(ConvenienceInitializer(age: 22).birthday)


/// Required Initializer
class RequiredInitializerBase {
    var value: Int
    required init(value: Int) {
        self.value = value
    }
}
print(RequiredInitializerBase(value: 1).value)

// Error
/*
class RequiredInitializerDerived1: RequiredInitializerBase {
   init() {
       super.init(value: 2)
   }
}
*/

class RequiredInitializerDerived2: RequiredInitializerBase {
    required init(value: Int) {
       super.init(value: value*2)
    }
}
print(RequiredInitializerDerived2(value: 2).value)


/// Initialization by function object
class FunctionObjectInitialization {
    let values: [Int] = {
        var result = [Int]()
        for i in 1...10 {
            result.append(i*i)
        }
        return result
    }()
}
print(FunctionObjectInitialization().values)


// ARC
class ARC {
    init() {
        print("ARC: created")
    }
    deinit {
        print("ARC: destroyed")
    }
}
var arc1, arc2, arc3: ARC?
arc1 = ARC() // ARC: created
print("arc1: assigned")
arc2 = arc1
print("arc2: assigned")
arc3 = arc1
print("arc3: assigned")

arc1 = nil
print("arc1: null")
arc2 = nil
print("arc2: null")
arc3 = nil // ARC: destroyed
print("arc3: null")
