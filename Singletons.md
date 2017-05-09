## Singletons

In **C#** singletons are of the form 

~~~~
using System;

public class Singleton
{
   private static Singleton instance;

   private Singleton() {}

   public static Singleton Instance
   {
      get 
      {
         if (instance == null)
         {
            instance = new Singleton();
         }
         return instance;
      }
   }
}
~~~~
([taken from](https://msdn.microsoft.com/en-us/library/ff650316.aspx))

This implementation is not thread safe, but can be made thread safe by making initilization static and tracking whether it has already been initialized.

**Swift**'s singletons are both less neccesary, due to the procedural/protcol nature of swift, and simpler, due to swift's functional properties.

~~~~
class TheOneAndOnlyKraken {
    static let sharedInstance = TheOneAndOnlyKraken()
    private init() {} //This prevents others from using the default '()' initializer for this class.
}
~~~~
[Taken from](https://krakendev.io/blog/the-right-way-to-write-a-singleton)

To borrow a phrase form the above source, this is "thread-safety by "virtue of let"" and really shows the power of let as a concept.

Note that the default init must be made private to prevent objects from creating thier own empty versions of the class.  This is the one disadvantage of default inits 


[Back to home](README.md)