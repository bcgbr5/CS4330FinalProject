## Extending existing classes
Both swift and C# support simple inheretance in essentially the same fashion as all other OO languages.  They also both have "Interfaces", although swift calls them protocols.  Swift also allows protocols to be declared as extensions, which resemble C#'s partial classes(see further down), but don't require the source.  They look like this

~~~~
extension Person{//This is like a protocol, but allows us to add new abilites to an existing class, we can't override it's function, but we can extend it.
    func printLastName(){
        print(self.lastName)
    }
}
~~~~

These allow us to easily and quickly add new abilities to an existing class. The idea behind this is that instead of "composing" a class out of it's parent class and several interfaces, the class can be "Decorated" with many extensions to add the needed abilities.

C#'s most similar ability is Partial Classes. These  allow similar abilities to be added. It is important to note that as far as the compiler is  concerned all elements in the base and partial class are one and the same, so some methods of encoding may have problems when different partial classes are added. 

~~~~
public partial class ExtendedClass //As long as we have the source we can extend with a partial class.  It's wordier than swifts extensions, but works
    {
        public void PrintPartial()
        {
            Console.Write("Print from partial class\n");
        }
    }
~~~~
Because this requires the source there are 2 alternate ways to add abilites to existing classes.  The first is to simply create a container object that can access the required elements. 

~~~~
public class ExtendedClassContainer
    {
        ExtendedClass contained;
        public void IncrementThisNum()
        {
            contained.thisNum++;
        }
		public ExtendedClassContainer()
		{
		}
        public ExtendedClassContainer(ExtendedClass toContain)
        {
            contained = toContain;
        }
    }
~~~~

However, this requires the element in question to be at an access level which the containing objects can access.  

The final method in C# is a bit odd, but allows for these abilites to be added when all else fails.

~~~~
public static class ExtExtender
	{
		public static void IncrementThisNum(this ExtendedClass toInc)
		{
			toInc.thisNum++;
		}
	}
~~~~

The idea is that a static class and static method accepting a first argument of the Class type effectivly serves as a flag that that method will modify the type itself and therefore can be added to the abilities of the class, without the first paremeter (which is assumed to be the object the method is called from). it's a little odd, but avoids the creation of a new object. Calling it would look like,

~~~~
ExtendedClass ex;
ex.IncrementThisNum; // This is baically equivelent to 
					 //ExtExtender.IncrementThisNum(ex)
					 
~~~~
To see the above in action, see these 2 links.


http://swift.sandbox.bluemix.net/#/repl/59111f2e4ee0cd258050b2a6

https://dotnetfiddle.net/IldXmH


[Back to home](README.md)