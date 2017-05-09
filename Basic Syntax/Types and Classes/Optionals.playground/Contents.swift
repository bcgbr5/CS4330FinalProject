//: Playground - noun: a place where people can play

import UIKit

//optionals allow us to avoid pyramid structures in code, i.e

var a:Int?
var b:Int?
//if(a != nil){
//    b=a*2
//}

//if(a!=nil){
//    if(b!=nil){//in this case we could check a and b together, but in many cases that's not possible because b in this case would be a sub property of a
//        
//    }
//}


/* Gurads let us avoid this*/
func test(){
    guard let c:Int = a else {
        print("fail")
        return
    }
    //From here on we know that c has a non-nil value
}
