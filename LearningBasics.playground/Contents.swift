import UIKit

var highScore = 0
let scoreLimit = 60

highScore = 60

let myName = "Maggie"

var currentActiveUsers = 124
currentActiveUsers = 1458

//=====================

var ages = [21, 55, 19, 20, 67, 10, 10, 46] //knows it is an array of ints

var studentNums: [Int] = [] //decaring an empty array needs a data type
//reads studentNums of type int

ages.count //gets the number of items in array
ages.first //gets the first item
ages.last //gets the last item
ages[0] //sub-scripting, getting the element depending on the index

ages.append(99) //adding LIFO
ages.insert(44, at: 0) //inserts 44 in index 0
ages.sort() //sorts in numerical order
ages.reverse() //sorts in reverse order
ages.shuffle() //shuffles the numbers

print(ages)

//=====================

var agesSet: Set<Int> = [18, 55, 20, 49, 22] //decared a set of type ints

/*
 you can also do
 var agesSet = Set(ages) if you want to make an existing array a set
 */

print(agesSet) //if any duplicates are in the array/set then it will not print it

agesSet.contains(55) //will look right for 55, constant look up O(1) t/f return

//=====================
        //  key       value
let devices: [String: String] = [
    "phone": "iPhone13", //comma separated
    "laptop": "macbook Pro",
    "tablet": "iPad",
    "pc": "I built it"
]
//Key is typically always a string

devices["laptop"] //constant time look up, uses the key to get the value

//=====================
                            //parameters, name (name of var) : String (type of var we are passing in)
func PrintInstructorsName(name: String){
    print(name)
}

PrintInstructorsName(name : "Joe Mama") //pass in string

//reads as add firstNum to secondNum to get an int
func add(firstNumber: Int, to secondNumber: Int) -> Int { //-> Int means that the function will return an int
    let sum = firstNumber + secondNumber
    return sum
}

add(firstNumber: 90, to: 5) //this is the call site

//=====================
var isDarkModeOn = true

if isDarkModeOn == true {
    print("Lets gooo")
} else {
    print("whyy")
}

func CheckDarkMode(isDarkModeOn: Bool){
    if isDarkModeOn == true {
        print("Lets gooo")
    } else {
        print("whyy")
    }
}

CheckDarkMode(isDarkModeOn: false)


if highScore > scoreLimit {
    print("omg you won")
} else if highScore < scoreLimit {
    print("womp")
} else {
    print("you have the same score as the score limit")
}

//=====================

let allStars = ["James", "Davis", "Harden", "Leonard", "Hillebrecht"]

//reads - for every player in the allStars array, I want to print their name
for player in allStars {
    print(player)
}

//loops allStars and if it finds the player Harden, then print their name
for player in allStars where player == "Harden" {
    print(player)
}

for i in 0..<25 {
    print(i) //prints 0-24
}

var randomInts: [Int] = []

//if you aren't using the name variable like i, it is common to use _
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100) //Int has a random function, (any number between 0-100)
    randomInts.append(randomNumber) //adds the randomNumber in the above line
}

print(randomInts)

//=====================

// WITHOUT RAW VALUES
enum Phones {
    case iPhone13
    case iPhoneXR
    case Galaxy10
    case Pixel
    /*
     ex of diff syntax
     case iPhone13, iPhoneXr, Galaxy10, Pixel
     */
}

// get maggies opinion on a phone from the phone enum
//func getMaggiesOpinion(on phone : Phone){
//    if  phone == .iPhone13 {
//        print("this is my phone")
//    } else if phone == .iPhoneXR {
//        print("this was my old phone")
//    } else if phone == .Galaxy10 {
//        print("idk girl")
//    } else if phone == .Pixel {
//        print("I wanted this at one point")
//    } else {
//        print("idk this phone L")
//    }
//}

//Switch statement to clean up above func
func getMaggiesCleanOpinion(on phone : Phones){
    switch phone {
    case .iPhone13:
        print("this is my phone")
    case .iPhoneXR:
        print("this was my old phone")
    case .Galaxy10:
        print("idk girl")
    case .Pixel:
        print("I wanted this at one point")
    //doesn't need default being all cases are handled and the default will never be executed
    }
}

getMaggiesCleanOpinion(on: .Pixel)

//with the raw value, you don't need to have a messy func below
enum Phone: String {
    case iPhone13 = "this is my phone"
    case iPhoneXR = "this was my old phone"
    case Galaxy10 = "idk girl"
    case Pixel = "I wanted this at one point"
    /*
     ex of diff syntax
     case iPhone13, iPhoneXr, Galaxy10, Pixel
     */
}

// get maggies opinion on a phone from the phone enum
func getMaggiesRawOpinion(on phone : Phone){
    print(phone.rawValue) //this will print the string
}

getMaggiesRawOpinion(on: .Galaxy10)


let matchMakingRank = 1000

func DeterminePlayerLeague(from rank: Int){
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in bronze league")
    case 50..<100:
        print("You are in silver league")
    case 100..<200:
        print("You are in gold league")
    default: //catch all statement
        print("You are in a league of your own")
    }
}

DeterminePlayerLeague(from: matchMakingRank)

//=====================

let valueOne = 55
let valueTwo = 88

let sum = valueOne % valueTwo

valueOne == valueTwo //just a t/f statement

if valueOne != valueTwo {
    print("nope")
} else if valueOne == valueTwo && isDarkModeOn {
    print("W")
} else if valueOne != valueTwo || !isDarkModeOn {
    print("rawr")
} else {
    print("they are equal")
}

isDarkModeOn = false

if !isDarkModeOn {
    print("Meow")
}

var counter = 0

counter += 1
counter -= 1

let greeting = "Hello"
let name = "Maggie"

print(greeting + " " + name)

let agesYoung = [3, 7, 5]
let agesOld = [88, 79]

let allAges = agesYoung + agesOld

print(allAges)

//=====================

//lets get the oldest age in array ages
ages.sort()

//if let is one way
if let oldestAge = ages.last { //could be a value or null
    print("The oldest age \(oldestAge)") //string interpilation in order to put in a string within a print ""
} else {
    print("There is no oldest age.")
}

//nil coalalesing
//let oldestAge = ages.last ?? 100 //if ages.last has a value then we unwrap the value but if there is nil then we give a default value of 100

//guard statement
func GetOldestAge(){
    guard let oldestAge = ages.last else { //guard gives an early exit if it is nil
        return
    }
    /*
     This is like a try catch, the top is the catch and then afterwards is the try
     */
    
    print("\(oldestAge) is the oldest age")
}

GetOldestAge()

//dangerous force unwrap, cheat code/easy way out DON'T USE
let oldestAge = ages.last! //reads idc what is in the array, just use it

//=====================

class Developer {
    //giving it properties
    var name: String? //question mark means optional like typescript
    var jobTitle: String?
    var yearsExp: Int?
    
    //default constructor
    init() {}
    
    //overloaded constructor
    //in this ex, self is like this in C++
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func SpeakName() {
        print(name)
    }
}

let Maggie = Developer(name: "Maggie", jobTitle: "Unemployed", yearsExp: 6)

Maggie.name
Maggie.jobTitle
Maggie.yearsExp

Maggie.SpeakName()

let Joe = Developer() //creating an empty object named Joe

Joe.name = "Joe"

class iOSDeveloper : Developer { //automatically has the vars and funcs within developer class
    var favoriteFramework: String?
    
    func SpeakFavoriteFramework(){
        //unwrapping optional
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I don't have a favorite framework")
        }
    }
    
    override func SpeakName() {
        print("\(name!) - \(jobTitle!)")
    }
}

let Ella = iOSDeveloper(name: "Ella", jobTitle: "Cat", yearsExp: 1)

Ella.favoriteFramework = "ARKit"
Ella.SpeakFavoriteFramework()

Ella.SpeakName()


//=====================

//reference type, pointing to one data
var mom = Developer(name: "paula", jobTitle: "mom", yearsExp: 0)

var dad = mom

dad.name = "Pete"
mom.name

//value types, creating a new data point
//change the class Developer to a struct
struct Developers {
    //giving it properties
    var name: String? //question mark means optional like typescript
    var jobTitle: String?
    var yearsExp: Int?
    
    //default constructor
    init() {}
    
    //overloaded constructor
    //in this ex, self is like this in C++
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func SpeakName() {
        print(name)
    }
}

var meow = Developers(name: "hi", jobTitle: "hello", yearsExp: 90)

var example = meow

meow.name = "Ella"
example.name
