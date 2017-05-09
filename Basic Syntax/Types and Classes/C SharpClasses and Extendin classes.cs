using System;
//https://dotnetfiddle.net/MTiNlh
namespace CSharpClassesandExtendingclasses
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            ExtendedClass ext = new ExtendedClass();//Default constructor provided, like swift
            ext.GetName();
            ext.PrintPartial();
            ExtendedClassContainer extCon = new ExtendedClassContainer(ex);
            ext.PrintInt();
            extCon.IncrementThisNum();
            ext.PrintInt();
            ext.GetName();
        }
    }
    interface hasName//Interfaces work the same as Java
    {
        String GetName();
    }
    public class BaseClass : hasName//But interface syntax is the same as swift
    {
        public void WriteOut()
        {
            Console.Write("In Main");
        }
        private int a { get; set; } = 4;//get set are keywords on a variable
        private String name = "BaseClass";
        public String GetName()
        {
            Console.Write(name);
            return name;
        }
        public BaseClass()
        {//Constuctors are declared the same as Java
        }
        public int thisNum = 1;
        public void PrintInt()
        {
            Console.Write(thisNum);
        }
    }
    public partial class ExtendedClass : BaseClass//Also the same syntax as swift
    {
        //private String name = "ExtendedClass";//I can redefine name because it's private, the same as Java, and it doesn't effect the method in the base class
    }









    public partial class ExtendedClass //As long as we have the source we can extend with a partial class.  It's wordier than swifts extensions, but works
    {
        public void PrintPartial()
        {
            Console.Write("Print from partial class");
        }
    }
    //We can also extend by making a containing class
    public class ExtendedClassContainer
    {
        ExtendedClass contained;
        public void IncrementThisNum()
        {
            contained.thisNum++;
        }
        ExtendedClassContainer(ExtendedClass toContain)
        {
            ExtendedClassContainer ex = new ExtendedClassContainer();
            ex.contained = toContain;
            return ex;
        }
    }

}
