##Reference and value types
In **Swift** Classes are refernce type, structs are value types. This also means that they actually have all of the same abililities, the only restriction of Structs is that they cannot inherit form a "Base Struct" nor can they be inherited from.  Comparison is handled by implementing a pair of interfaces, Comparable and Equatable, which overide the ==, !=, <, <=, >, and >= operators to return boolean values.  This means that they both will always be compared the way the programmer intends, and that the exact method of comparison is availabe should a question arise.

**C#** has much the same structure of Classes and Structs having similar abilites, and allows the same overloading of the == and != operators. It also provides methods for comparing whether the 2 objects are the same reference, in effect the way Java treats the standard == operator.  C# does provide basic == support for primatives, i.e. lower case value types like int. It does however have some problems relating to [floating point values](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.7).

[http://swift.sandbox.bluemix.net/#/repl/5911281e4ee0cd258050b2a8](http://swift.sandbox.bluemix.net/#/repl/5911281e4ee0cd258050b2a8)

[https://dotnetfiddle.net/qX5IVD](https://dotnetfiddle.net/qX5IVD)
