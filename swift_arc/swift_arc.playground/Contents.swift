//: Playground - noun: a place where people can play

import UIKit

// Strong Reference
class StrongReference {
    init() {
        print("StrongReference: created")
    }
    deinit {
        print("StrongReference: destroyed")
    }
}
var sr1, sr2, sr3: StrongReference?
sr1 = StrongReference() // StrongReference: created
print("sr1: assigned")
sr2 = sr1
print("sr2: assigned")
sr3 = sr1
print("sr: assigned")

sr1 = nil
print("sr1: null")
sr2 = nil
print("sr2: null")
sr3 = nil // StrongReference: destroyed
print("sr3: null")


// Circular Reference
class CircularReference1 {
    var value: CircularReference2?
    init() {
        print("CircularReference1: create")
    }
    deinit {
        print("CircularReference1: destroy") // never called!
    }
}
class CircularReference2 {
    var value: CircularReference1?
    init() {
        print("CircularReference2: create")
    }
    deinit {
        print("CircularReference2: destroy") // never called!
    }
}
var circularReference1: CircularReference1? = CircularReference1()
var circularReference2: CircularReference2? = CircularReference2()
circularReference1!.value = circularReference2
circularReference2!.value = circularReference1
circularReference1 = nil // memory leak!
circularReference2 = nil // memory leak!


// Weak Reference
class WeakReference1 {
    var value1 = 1
    weak var ref2: WeakReference2?
    init() {
        print("WeakReference1: create")
    }
    deinit {
        print("WeakReference1: destroy")
    }
}
class WeakReference2 {
    var value2 = 2
    weak var ref1: WeakReference1?
    init() {
        print("WeakReference2: create")
    }
    deinit {
        print("WeakReference2: destroy")
    }
    func displayRef1() {
        if let value1 = self.ref1?.value1 {
            print("ref1.value1: \(value1)")
        }
        else {
            print("ref1: null")
        }
    }
}
var weakReference1: WeakReference1? = WeakReference1()
var weakReference2: WeakReference2? = WeakReference2()
weakReference1!.ref2 = weakReference2
weakReference2!.ref1 = weakReference1
weakReference2!.displayRef1()
weakReference1 = nil // call deinitializer
weakReference2!.displayRef1()
weakReference2 = nil // call deinitializer
