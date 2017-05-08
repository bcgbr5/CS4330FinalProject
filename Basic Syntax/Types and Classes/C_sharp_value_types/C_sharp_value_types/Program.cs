using System;
/*Similar to Swift in C# enums and structs are value types rather than reference.  The built in int, point, etc elements represent exapmles of these.*/
namespace C_sharp_value_types
{
    class ExampleClass{
        public int i = 0;

    }
    class MainClass
    {
        public static void Main(string[] args)
        {
            int a = 0;
            int b = a;
            a = 42;
            Console.WriteLine("a = " + a + ",  b = " + b);

            ExampleClass c = new ExampleClass();
            c.i = 0;
            ExampleClass d = c;
            d.i = 42;
            Console.WriteLine("c.i = " + c.i + ",  d.i = " + d.i);
        }
    }
}
