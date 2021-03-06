//: [Previous](@previous)
/*:
 ## Functions

 A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing. Below you can see the different structures of a function of how you can write them.
 */
/*:
 - Callout(Structure): This function structure does not include any parameters and does not return anything
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses
 - Open and close braces
*/
func sayHello(){
    print("Hello")
}
/*:
 - Callout(Structure): This function takes in a single parameter and does not return any values
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - **Open and close parentheses with a parameter called 'toPerson' of type `String`**
 - Open and close braces
 */
func sayHello(toPerson: String){
    print("Hello \(toPerson)")
}
/*:
 - Callout(Structure): This function takes in a single parameter and returns a value of type `String`
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses with a parameter called 'toPerson' of type `String`
 - A return value of type `String` represented by the `->`
 - Open and close braces
 */
func sayHello(toPerson: String) -> String{
    return "Hello \(toPerson)"
}
/*:
 - Experiment:
 Try calling all of the functions above. They all have the same function name, but the compiler doesn't complain. Can you think of why this might be?
 */
sayHello()
//let hi = sayHello(toPerson: "Donna")
//sayHello(toPerson: <#T##String#>)
// The compiler DOES COMPLAIN. Thanks for confusing me guys!
/*:
 - Experiment:
 Try creating your own function that accepts two parameters of any type you choose. Have the function print out the two parameters and test your function.
 */
func addTheseNumbers(int1:Int, int2:Int) {
    print(int1 + int2)
}
addTheseNumbers(int1: 5, int2: 7)
/*:
 - Callout(Challenge):
 Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result. Try testing each one afterwards.
 
 */
func addSomeNumbers(int1:Int, int2:Int) {
    print(int1 + int2)
}
func subtractSomeNumbers(int1:Int, int2:Int) {
    print(int1 - int2)
}
func multiplySomeNumbers(int1:Int, int2:Int) {
    print(int1 * int2)
}
func divideSomeNumbers(int1:Int, int2:Int) {
    print(int1 / int2)
}

let numberOne = 12
let numberTwo = 5

addSomeNumbers(int1: numberOne, int2: numberTwo)
subtractSomeNumbers(int1: numberOne, int2: numberTwo)
multiplySomeNumbers(int1: numberOne, int2: numberTwo)
divideSomeNumbers(int1: numberOne, int2: numberTwo)
/*:
 - Callout(Challenge):
 Create your own 'reverse' function that takes in an array of Int, reverses the order of the array, and returns the newly reversed array of Int. The array class has its own 'reverse' method, but do not use it for this challenge.
 */
func reverseArray(InputArray:[Int]) -> [Int] {
    var reversedArray:[Int] = []
    for (index, _) in InputArray.enumerated() {
        reversedArray.append(InputArray[InputArray.count - 1 - index])
    }
    return reversedArray
}

var numberArray: [Int] = [4, 8, 2, 9, 3, 12, 0, 4, 7]
reverseArray(InputArray: numberArray)
/*:
 ## Closures
 
 Closures are also a set of statements grouped together but the closure can be stored and passed around and executed somewhere else.
 
 - Note:
 A closure in Swift is similar to blocks in Objective-C
 */
/*:
 For example, the UIViewController has a 'dismiss' method.
 
 `func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)`
 
 The 'completion' part of it is the completion handler which is a closure. It will execute that block of code when the dismiss action has completed.
 */
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosure'.
 
 - Start with the open braces
 - The first '()' indicates it takes no parameters
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureToPerson'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureToPerson = { (name: String) -> () in
    print("Hello \(name)")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The `'String'` after the arrow indicates it returns a `String` type
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}
/*:
 - Experiment:
 Try calling all of the closures above. What do you notice that is different from calling a function?
 */
sayHelloClosure()
sayHelloClosureToPerson("John")
print(sayHelloClosureWithReturn("Wanda"))
/*:
 - Experiment:
 Try creating your own closure that accepts two parameters of any type you choose. Have the closure print out the two parameters and test your closure.
 */
var bringsAllTheBoysToThe = { (thing: String, place:String) -> () in
    print("My \(thing) brings all the boys to the \(place).")
}

bringsAllTheBoysToThe("thermos", "mountains")
bringsAllTheBoysToThe("methods", "commandline")
/*:
 - Experiment:
 Declare a variable with an explicit closure type: `(String) -> (String)`. This closure type says it takes one parameter of type String and returns a variable of type String.
 */
var yellMyName = { (name:String) -> (String) in
    return name.uppercased()
}

print(yellMyName("camelCase"))



var switchBack = { (truth:Bool) -> (Bool) in
    if truth == true {
        return false
    } else {
        return true
    }
}
switchBack(false)
switchBack(true)
/*:
 - Callout(Challenge):
 Create a closure with at least two parameters of your choice and decide whether or not it returns anything. Then create a function that takes in your closure as a parameter and one additional parameter of your choice.
 */
//: [Next](@next)
