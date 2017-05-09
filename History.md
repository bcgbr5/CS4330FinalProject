## C# History

C# was first released in [2002](http://www.ecma-international.org/publications/files/ECMA-ST-WITHDRAWN/ECMA-334,%202nd%20edition,%20December%202002.pdf) as an effort to create ["to create a first class modern language on this platform that would appeal to the curly braces crowd: the C++ programmers of the world at the time, and competitively, the Java programmers."](http://www.computerworld.com.au/article/261958/-z_programming_languages_c). It was developed under the original name of Cool (C like Object Oriented Language), as an object oriented language under the .net platform.  Other sources have refered to it, sometimes derisivly as a clone of [Java](https://www.cnet.com/news/why-microsofts-c-isnt/). Although, Java has somtimes taken features from C# releases and integrated them into itself, such as [enums and boxing/unboxing](http://www.barrycornelius.com/papers/java5/onefile/#body.1_div1.1).  With the developmet of Mono and Microsofts own push with Xamarin, there has been a slow push away from Microsofts native platforms.

## Swift History

Swift was created at Apple in 2014 as a replacement for its prior Objective-C language, for development on the IOS and MacOS platforms. The language has strong support for optionals which serves as a way of avoiding "pyramid" structures in code.

~~~~
if windows.contains("Main") {
    if windows("Main").views.contains(5) {  
     theWidth = windows("Main").views(5).size().width();
    //Shamelessly copied from wikipedia 
	}
}
~~~~

In swift a similar structure would look like

~~~~
guard let leaseStart = aBuilding.TenantList[5]?.leaseDetails?.startDate else {
        //handle the error case where anything in the chain is nil
        //else scope must exit the current method or loop
    }
    //continue, knowing that leaseStart is not nil
~~~~

The language also uses syntactic surgar in the form of var/let variable declarations to encourage the use of 'final' variables and side effect free functions.

[Back to home](README.md)