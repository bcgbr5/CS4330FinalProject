import UIKit

protocol FullyNamed {//Protocols function similar to interfaces, they define a set of features we know we need to have
    var fullName: String { get }
}

class Person: FullyNamed {//But, protocols must be declared when the class is created
    var firstName:String
    var lastName:String
    var fullName:String{
        get{
            return String(firstName + " " + lastName)
        }
    }
    init(firstName:String, lastName:String){//This is a computed property, everytime it is used it will be recalculated
        self.firstName = firstName
        self.lastName = lastName
    }
    private let bankAccount = arc4random()
}
var john = Person(firstName:"John",lastName:"Appleseed")
// john.fullName is "John Appleseed"
print(john.fullName)

john.lastName = "Swenson"
print(john.fullName)//It changes to "John Swenson"
extension Person{//This is like a protocol, but allows us to add new abilites to an existing class, we can't override it's function, but we can extend it.
    func printLastName(){
        print(self.lastName)
    }
}

john.printLastName()

//extension Person{But we still can't violate access levels.  It's not like we're actually in the class
//    func PrintBankAccount(){
//        print(bankAccount)
//    }
//}

class Citizen:Person{//We can subclass like this, but because swift doesn't have the concept of protected variables, this doesn't really get us much that extension don't.
                    //Also note that the sytax for extending a class is identical to the syntax for implementing a protocol.
}


/*Protocol Exapmle from https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html */



