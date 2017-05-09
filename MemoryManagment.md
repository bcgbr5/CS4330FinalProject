## Memory Managment
**Swift**'s memory managment works by reference counting.  Essentially when the last refernce to an object is lost, what would in C be considered a memory leak, the object is deallocated.  This works well in most circumstances because it means an object is only held onto until it is no longer needed and it means that memory managment is a consitent overhead, rather than occuring at random.  It does have one pitfall however. 

If the normal cycle of life and death for an object looks like

1.Int i > MemForIntI

2.<del>Int i</del> > MemForIntI

3.<del>Int i</del> > <del>MemForIntI</del>

Then this leaves open the possiblity of a stucture like 


1.Obj i > MemForObjI<> MemForObjJ < Obj j

2.<del>Obj i</del> > MemForObjI<> MemForObjJ < <del>Obj j</del>

Which leaves a refence to both objects existing even though they cannot ever be reached by the surrounding code. This can be avoided by properly structuring code, but does need to be kept in mind.

**C#** on the other hand, works by using the same reference counting method, but collects garbage at intervals rather than continually, with an Object becomning "Eligible for destruction" when the last reference is deleted.  This can present some problems if it triggers while other events are occuring, but normally functions fine.  

References: 
[https://msdn.microsoft.com/en-us/library/aa691138(v=vs.71).aspx] (https://msdn.microsoft.com/en-us/library/aa691138(v=vs.71).aspx)

[https://www.raywenderlich.com/134411/arc-memory-management-swift](https://www.raywenderlich.com/134411/arc-memory-management-swift)


[Back to home](README.md)


