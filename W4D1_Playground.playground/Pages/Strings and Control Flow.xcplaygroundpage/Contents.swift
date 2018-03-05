//: [Previous](@previous)
/*:
 ## String Interpolation

 String interpolation is combining variables and constants inside a string.
 We can do this by writing the value in parentheses and write a backslash "`\`" before the parentheses.
 
 - Note:
 Formatting strings in Objective-C was usually done with the `stringWithFormat:` method.
 
 For example:
*/

var name = "Joe Smith"
print("Your name is \(name)")

/*:
 The sentence is printed as one string because string interpolation combined it for us.
 */
/*:
 - Experiment:
 Declare three variables about a person with their name, age and height. Then print out a sentence describing the person with the three variables.
 */
/*:
 - Example:
 "Your name is Joe Smith, your age is 35, and your height is 175cm."
 */
var jacksonName = "Jackson"
var jacksonAge = 45
var jacksonHeight = "6ft"
let jacksonDescription = "Your name is \(jacksonName), your age is \(jacksonAge), and your height is \(jacksonHeight)."

/*:
 - Experiment:
 Math calculations can be included within the "`\()`" such as adding two variables together. Try printing out a sentence using string interpolation and include a calculation.
 */
var tableHeight = 3.5
var screenHeight = 1.5
var screenOnTableHeight = "Your table is \(tableHeight) ft tall, your screen is \(screenHeight) ft tall, the top of your screen is \(tableHeight + screenHeight) ft."
/*:
 ## Control Flow

 Use `'if'` and `'switch'` to make conditionals that run certain blocks of code. You've already seen this in Objective-C. The syntax is very similar except for the omission of the parenthesis around the condition.
 - Note:
 Swift switch statement supports pattern matching for different switch cases. You'll get to try them out with the example below.
*/

let myConditional = true
if myConditional {
    print("It's true!")
} else {
    print("It's false!")
}

/*:
 - Experiment:
  Try creating your own 'if' statement that determines whether a given number is even, odd or zero.
 */
let testNumber = 3
if testNumber == 0 {
    print("It's zero!")
} else if testNumber % 2 == 0 {
    print("It's even!")
} else {
    print("It's odd!")
}

/*:
 - Experiment:
 The following switch statement showcases multiple conditions to check. Some of the case conditions may be unfamiliar to you.
 Try changing the 'vegetable' variable to test the conditions and figure out how they work.
 */

let vegetable = "purple pepper"
var vegetableComment = ""
switch vegetable {
case "celery":
    vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
default:
    vegetableComment = "Everything tastes good in soup."
}


/*:
 - Callout(Challenge):
 Create an if/else statement to print out the grammatically correct description of the number of bicycles there are. Declare a 'bicycleCount' variable with any number you wish then cover the conditions for zero bicycles, 1 bicycle, and more than 1 bicycle. ie: 'There are zero bicycles', 'There is 1 bicycle', 'There are 20 bicycles'
 */
// made type UInt because 'negative bicycles' doesn't make sense and it will allow switch to be exhaustive with one less case
let bicycleAmount: UInt = 5
var bicycleComment = ""
if bicycleAmount == 0 {
    bicycleComment = "There are no bicycles"
} else if bicycleAmount == 1 {
    bicycleComment =  "There is one bicycle"
} else {
    bicycleComment = "There are \(bicycleAmount) bicycles"
}
/*:
 - Callout(Challenge):
 Rewrite the above Challenge as a switch statement
 */
var bicycleCommentTwo = ""
switch bicycleAmount {
case 0:
    bicycleCommentTwo = "There are no bicycles"
case 1:
    bicycleCommentTwo = "There is one bicycle"
default:
    bicycleCommentTwo = "There are \(bicycleAmount) bicycles"
}


