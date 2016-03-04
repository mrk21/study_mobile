import UIKit

// if
var value_if1 = 100

if value_if1 <= 50 {
    print("1")
}
else if value_if1 <= 125 {
    print("2")
}
else {
    print("3")
}


// for
var value_for1 = [1,2,3]
for var i=0; i<value_for1.count; ++i {
    print(value_for1[i])
}
for var i=0; ; ++i {
    if i >= value_for1.count { break }
    print(value_for1[i])
    if i < value_for1.count { continue }
    print("This message is not displayed.")
}

/// for in
for value in value_for1 {
    print(value)
}

var value_for2 = ["a": 1, "b": 2, "c": 3]

for (key, value) in value_for2 {
    print("\(key) => \(value)")
}
for pair in value_for2 {
    print("\(pair.0) => \(pair.1)")
}


// while
var value_while1 = 0

while value_while1 <= 10 {
    print(value_while1)
    value_while1 += 2
}

/// repeat while
var value_while2 = 0

repeat {
    print(value_while2)
    value_while2 += 2
} while value_while2 <= 10


// label
var value_label1 = [1,2,3,4,5]

labelOuterLoop: for value in value_label1 {
    while true {
        print(value)
        if value == 5 { break labelOuterLoop }
        continue labelOuterLoop
    }
}


// switch
var value_switch1 = 98

switch value_switch1 {
case 0..<50:
    print("0..<50")
case 50..<100:
    print("50..<100")
case 100..<150:
    print("100..<100")
default:
    print("other")
}

/// use where
switch arc4random() % 100 {
case let n where n == 0:
    print("n == 0")
case let n where n < 10:
    print("n < 10")
case let n where n < 50:
    print("10 < n < 50")
case let n where n < 80:
    print("50 < n < 80")
default:
    print("other")
}

/// use tuple
/// This is like pattern matching.
var value_switch2: (UInt32, UInt32?)
value_switch2 = (
    arc4random() % 3,
    arc4random() % 10 == 1 ? nil : arc4random() % 400
)

switch value_switch2 {
case (1,_):
    print("(1,_)")
case (2, nil):
    print("(2, nil)")
case let (2, second):
    print("let (2, second) => second: \(second!)")
default:
    print("other")
}