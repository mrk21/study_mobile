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