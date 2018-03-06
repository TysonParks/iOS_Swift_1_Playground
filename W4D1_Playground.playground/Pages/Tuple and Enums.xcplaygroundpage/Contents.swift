//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */
var artistTuple = (name:"Jeff Koonz", 100000000, knownFor:"🐕")

/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */
var fiveRichestArtists = (5, artistTuple)

/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */



let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
// Here's the tuple! --> (kind, numbers) is a tuple
for (kind, numbers) in interestingNumbers {
    print(kind)
    print(numbers)
}

/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
// Is that supposed to say "eligible" above?

func returnPerson (name:String, age:Int, eligible:Bool) -> (String, Int)? {
    let personTuple = (name, age)
    if eligible {
        return personTuple
    } else {
        return nil
    }
}


if let validPerson = returnPerson(name: "Joe", age: 12, eligible: true) {
    print(validPerson)
}
if let invalidPerson = returnPerson(name: "Fred", age: 40, eligible: false) {
    print(invalidPerson)
}
/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
    case January
    case February
    case March
    case April
    case May, June, July, August
    case September, October, November, December
    
    func abbreviatedStringForm() -> String {
        switch self {
        case .January: return "Jan"
        case .February: return "Feb"
        case .March: return "Mar"
        case .April: return "Apr"
        case .May: return "May"
        case .June: return "Jun"
        case .July: return "Jul"
        case .August: return "Aug"
        case .September: return "Sep"
        case .October: return "Oct"
        case .November: return "Nov"
        case .December: return "Dec"
        }
    }
    
    func numberOfMonthsFrom(month:Months) -> Int {
        var leastMonthsBetween: Int = 0
        let firstMonthsBetween = self.rawValue - month.rawValue
        let secondMonthsBetween = (self.rawValue - 12) - month.rawValue
        if firstMonthsBetween < secondMonthsBetween {
            leastMonthsBetween = firstMonthsBetween
        } else {
            leastMonthsBetween = secondMonthsBetween
        }
        return abs(leastMonthsBetween)
    }
}

//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January.rawValue  //Received enum index
let marchMonth = Months.March.rawValue      //Received enum index

/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */
// .rawValue give the Int for the enum index number
// Removing the 1 resets the index start point to the default 0
/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */
Months.September.abbreviatedStringForm()
Months.July.abbreviatedStringForm()

/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */
Months.December.numberOfMonthsFrom(month: Months.February)
Months.September.numberOfMonthsFrom(month: Months.March)
// Note that it checks for months in current year and next year

/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/
enum gameGestures: String {
    case Rock
    case Paper
    case Scissors
    

    
    func emoji() -> (String) {
        switch self {
        case .Rock:
            return "👊"
        case .Paper:
            return "✋"
        case .Scissors:
            return "✌️"
        }
    }
}



gameGestures.Rock.emoji()
gameGestures.Scissors.emoji()
gameGestures.Paper.emoji()


// Couldn't get this function code below to work
// Can't really debug... the code below breaks the entire enum even when it's commented out

//    func getWinner(gesture:gameGestures) -> (String) {
//        if self.rawValue == gesture.rawValue {
//            return "Tied"
//        } else {
//            switch (self.rawValue, gesture.rawValue) {
//                case (0,1): return "Paper Wins"
//                case (0,2): return "Rock Wins"
//                case (1,2): return "Scissors Wins"
//                case (1,0): return "Paper Wins"
//                case (2,0): return "Rock Wins"
//                case (2,1): return "Scissors Wins"
//            }
//        }
//    }
//: [Next](@next)
