## Dealing with Null/Nil values and Unique features of Swift
**C#** has only basic allowance for dealing with Null values.  Essentially, one must either run if/else block to ensure the value is non null, or use try/catch blocks.

**Swift** on the other hand is essentially built to handle nil(the same as null) values.  It provides the concept of optionals, if let s and guard statments to make dealing with null values very simple, in addition to try/catch.

For example, a value which is not yet asigned can be declared optional, like so

~~~~
var a:Int?;
//Other code

if let 2TimesA = a? * 2{
	print 2TimesA
}
else{
	//do other
}
~~~~
which allows error handling without the exeption.
The structure is even more elegant with

~~~~
guard let 2TimesA = a? * 2{
	//Handle error
}
//Procede with program
~~~~
this allows variables to be declared in thier attempt at unwrapping, somthing which try/catch doesn't allow 

~~~~
try{
	var 2TimesA = a * 2
}catch{
	//Do stuff
}
//we can't do stuff that uses 2TimesA because 
//it's in the try{}, we would have needed 
//to declare it before the try.
~~~~

