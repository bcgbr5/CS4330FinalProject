## Namespaces

In C# namespaces are explicitly declared, i.e.
`namespace SampleNamespace`

C# also has allowance for nested namespaces,

~~~~
namespace SampleNamespace
{
    class SampleClass { }
    namespace SampleNamespace.Nested
    {
        class SampleClass2 { }
    }
}
~~~~

Methods from nested namespaces can be called form thier parent namespace like so,

~~~~
namespace SomeNameSpace
{
    public class MyClass 
    {
        static void Main() 
        {
            Nested.NestedNameSpaceClass.SayHello();
        }
    }

    // a nested namespace
    namespace Nested   
    {
        public class NestedNameSpaceClass 
        {
            public static void SayHello() 
            {
                Console.WriteLine("Hello");
            }
        }
    }
}
// Output: Hello
~~~~
    