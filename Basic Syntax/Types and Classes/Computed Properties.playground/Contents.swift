import UIKit

var width = 100.0
var height = 100.0

// this is the computed property!
var area: Double {//Computed properties allow us to define variables by composing them out of other variables.
    return width * height
}



print(area) // 10,000.0

width = 10.0
height = 10.0
print(area) // 100.0

width = 15.0
height = 10.0
print(area) // 150.0

/* In C or Java, this could be accomplished by defining a function 
 
 Double area(int width, int height){
    return width * height;
 }
 
 print(area(10,10);
*/

/*example from https://www.natashatherobot.com/swift-computed-properties/ */
