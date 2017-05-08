//Original Exampe taken from https://developer.apple.com/swift/blog/?id=10

import UIKit

// Value type example
struct S { var data: Int = -1 }
var a = S()
var b = a						// a is copied to b
a.data = 42						// Changes a, not b
print("\(a.data), \(b.data)")	// prints "42, -1"

//As opposed to the class reference type
class C {var data:Int = -1}
var c = C()
print(c.data)
var d = c
c.data = 42
print("\(c.data), \(d.data) ")


//the other reference types in swift are the Array, String, and Dictionary