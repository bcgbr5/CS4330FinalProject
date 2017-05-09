##Procedural and Functional Programming

Apple refers to **Swift** as "[Protocol Oriented]()".  This seems to have more to do with the way they encourage extension by protocol, over extension by inheretance.  However, by it's nature swift is fairly well suited to procedural programming.  It's default it top down execution and it has support for nested functions and classes which allow code to be executed in a fairly simple top down fashion.  It's "Hello world" program demonstrates this, by being as simple as C or Python's.  

~~~~
import UIKit
print("Hello, world")
~~~~

This avoids the Java problem of needing to create a class and the "Public static void main".  System.out.Println which has a long and winding explanation, especially for somthing as simple as print, "[Actually out is a static member in the System class (not as in .NET), being an instance of PrintStream. And println is a normal (overloaded) method of the PrintStream class.](http://stackoverflow.com/questions/3406703/whats-the-meaning-of-system-out-println-in-java)"

In a similar way, swift's var/let dichotomy both encourages the use of final variables and alllows as much functional syntax as a programmer is willing to write.

**C#** has similar problems to java, but the allowance of first class functions slightly negates the problem, and allows for a semblance of procedural programming without simply writing the entire program in main. Functional programming is more difficult.  There are some C# coders who simulate it with [static methods](http://mikehadlow.blogspot.com/2015/08/c-program-entirely-with-static-methods.html), but overall the languages support for such features is low.