##Swift History

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
    

