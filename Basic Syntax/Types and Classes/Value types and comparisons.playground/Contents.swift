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


//the other value types in swift are the Array, String, and Dictionary
//Structs have all of the abilities of classes, except the ability to inherit and the ability to be extended by inheritance

//Comparison
var z = S()
print(z.data)
//if(a==z){ We can't generically compare 2 Structs or classes
var y = C();
//if(c==y){

class Eq : Equatable{//We can define a class or struct as conforming to the equatable protocol
    var data = 1
    static func == (lhs:Eq, rhs : Eq)->Bool{
        return lhs.data == rhs.data
    }
}
//and now we can compare them
if(Eq() == Eq()){
    print(true)
}//This also avoids the what does == do in this context problem from Java, where == on some things checks value and on others it checks whether they are the same object
