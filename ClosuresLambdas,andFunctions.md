## Closures, Lambdas and Functions, Oh My
(I'm so sorry). 

**C#** supports first class functions in the form of 

~~~~
Func<string,string> myFunc = delegate(string var1)
    {
        return "some value";   
    };
~~~~

or 

~~~~
Func<string,string> myFunc = var1 => "some value";
~~~~
([taken from](http://www.codethinked.com/c-closures-explained))

this then allows these functions to be called from anywhere that an object in the equivelent context could be called.  

**Swift** on the other hand has inherent support for functions (Swift more closly resembles python or C in that not everything must occur in an object, unlike C# which more resembles Java), and supports closures in place of lambdas, it does however allow [closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html)

~~~~
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}
 
// Here's how you call this function without using a trailing closure:
 
someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})
 
// Here's how you call this function with a trailing closure instead:
 
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}
~~~~
These allow code to be written similar to a lamba have certain advantages, the largest being that they can be passed as a function parameter to another function, which is often used for sort purposes in swift.
