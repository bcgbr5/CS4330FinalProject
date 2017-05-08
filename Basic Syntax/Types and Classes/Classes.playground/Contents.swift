//: Playground - noun: a place where people can play

import UIKit

class Example{
    var i = Int()/*Most swift variables default to an access level of Internal, roughly equivelent to Java's protected.  This means access is restriced to the 'Module' in which the code is contained, which is roughly equivelent to a namespace. Apple actually encourages using this in most cases stating, 
            "In addition to offering various levels of access control, Swift reduces the need to specify explicit access control levels by providing default access levels for typical scenarios. Indeed, if you are writing a single-target app, you may not need to specify explicit access control levels at all."
                    -https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html
    
 Similar to most languages a new instance is created by calling a function with the name of the class you want to instantiate. Unlike many languages, the new keyword is not used. */
    var k:Int//Types can be explicitly declared whithout using a constructor like this
    private var j:Int?//In the event you want to is offers a private level, which restrics access to the enclosing declaration.
    
    
    init(i:Int, k:Int) {//Init instead of declaring a function with the same name as the class.
        
        self.i = i//Self instead of this, makes it more explicit that the self reference refers to the version owned by the object.
        
        self.k = k
    }
    deinit {//opposite of init, similar to Java's destructor, called right before the objects memory is deallocated.
        // perform the deinitialization
    }
}

var thisExample = Example(i: 2,k: 3)
thisExample
