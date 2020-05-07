//
//  PlayGround2.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/10/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import Foundation



func play2 () {
    
//create a class
//    class Animal {
//        var name : String
//    }
//  compile error - no initalizer

//Initalization with nullable value
//    class Animal {
//        var name : String?
//    }
//    let animal = Animal()
//    print(animal.name) //nil <- 1
//    animal.name = "dog"
//    print(animal.name ?? "unknown animal") // <- 2

    
//Initalization with predefined value
//    class Animal {
//        var name : String = "unknown animal" //Default initializer
//    }
//    let animal = Animal()
//    animal.name = "Dog"
//    print(animal.name)
//

//Initialization using init()
//    class Animal {
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//    }

    
//  Init() overloading
//    class Animal {
//        var name : String = ""
//        var skinColor : String = ""
//        init(name : String) {
//            self.name = name
//            self.skinColor = "black"
//        }
//
//        init(identity : String) {
//            self.name = identity
//        }
//
//        init(knownAs : String) {
//            self.name = knownAs
//        }
//    }
//    let bird = Animal(name: "bird")
//    let dog = Animal(identity: "dog")
//    let cat = Animal(knownAs: "cat")
//

//Designated initializer

    
//========================
    /*
     Exercise - create classes
     
     Steps
     1. Create a fruit class with parameters name, price
     2. Create a meat class with parameters name, price
     3. Create a drink class with parameters name, price
     4. Create a list of fruit
     5. Create a list of meat
     6. Create a list of drinks
     7. Prints all items
     */
    
//    class Fruit {
//        var name : String
//        var price : Int
//
//        init(name : String, price : Int) {
//            self.name = name
//            self.price = price
//        }
//    }
//
//    class Drink {
//        var name : String
//        var price : Int
//
//        init() {
//            self.name = "cola"
//            self.price = 300
//        }
//
//        init(name : String, price : Int) {
//            self.name = name
//            self.price = price
//        }
//    }
//
//    class Meat {
//        var name : String
//        var price : Int
//
//        init(name : String, price : Int) { //Designated Initializers
//            self.name = name
//            self.price = price
//        }
//    }
//
//    var fruits = [Fruit]()
//    fruits.append(Fruit(name: "apple", price: 1000))
//    fruits.append(Fruit(name: "orange", price: 2000))
//    fruits.append(Fruit(name: "banana", price: 100))
//
//    var meat = [Meat]()
//    meat.append(Meat(name: "lamb", price: 15000))
//    meat.append(Meat(name: "pork", price: 4000))
//    meat.append(Meat(name: "chicken", price: 10000))
//
//    var drinks = [Drink]()
//    drinks.append(Drink())
//    drinks.append(Drink(name: "pepsi", price: 400))
//    drinks.append(Drink())
//
//    for item in fruits {
//        print(item.name)
//    }
//
//    for item in meat {
//        print(item.name)
//    }
//
//    for item in drinks {
//        print(item.name)
//    }
    
//========================
    
//Convenience initializer
    class CatGenerator { //<- 1
        var name : String
        var skinColor : String
        var numberOfTails : Int
        var numberOfEyes : Int
          //<-2
        init(name : String, skinColor : String, numberOfTails : Int, numberOfEyes : Int) {
            self.name = name
            self.skinColor = skinColor
            self.numberOfTails = numberOfTails
            self.numberOfEyes = numberOfEyes
        }
//
        convenience init(name : String) { //<- 3 //Secondary
            self.init(name : name, skinColor : "brown", numberOfTails : 1, numberOfEyes : 2)
        }
    }
    
    
//
//    <- 2
//    let blackcat = CatGenerator(name: "joker", skinColor: "black", numberOfTails: 1, numberOfEyes: 2)
//    let goldencat = CatGenerator(name: "woo kone", skinColor: "golden", numberOfTails: 1, numberOfEyes: 2)
//
//    <- 4
//    let normalcat = CatGenerator(name: "garfield")

//===============
    /*
    Exercise - implementing convience initializer
     Steps
     1. set an empty convenience initializer for drink class which initialize with name "Cola", price "300" by default
     2. Add a few more drinks just by initializing a drink object without any parameters
     */
//===============
    
    
    /*
    Designated Initializer သည် super class မှာရှိတဲ့  Designated Initializer ကိုပဲခေါ်လို့ရတယ်။
     current class မှာရှိတဲ့ DI ကို ခေါ်သုံးလို့မရဘူး
     Convenience Initializer သည် curret class ရဲ့ DI ကို ခေါ်သုံးလို့ရတယ်။
     */

//
//    class SuperCatGenerator : CatGenerator { //<- 1
//        var superPower : String
//        init(superPower : String) {
//            self.superPower = superPower
//            super.init(name: "meow meow", skinColor: "rainbow", numberOfTails: 9, numberOfEyes: 3)
//        }
//
//        convenience init() { //<- 2
//            self.init(superPower: "flying")
//        }
//
//    }
    
//    let flyingcat = SuperCatGenerator(superPower: "flying") //<- 3
//    print(flyingcat.name)
    
//    let flyingcat = SuperCatGenerator() //<- 4
//    print(flyingcat.name)
    
    
//Failable initializer
//    class Animal {
//        var name : String
//        init?(name : String) {
//            if name.isEmpty {
//                return nil
//            } else if name == "human" {
//                print("A human is not an animal")
//                return nil
//            }
//            self.name = name
//        }
//    }
//    let animal = Animal(name: "")
//    print(animal) //prints nil <- 1
//    let animal = Animal(name: "dog")
//    print(animal?.name ?? "unknown creature") //<- 2 unwrapping with nil coalensing operator
//    let animal = Animal(name: "human")
//    print(animal) //nil
//    guard let uwrappedAnimal = animal else {return} //<- 3 unwrapping with guard let statement
//    print(uwrappedAnimal.name)
    
    //Exercise
    // If human -> nil
    
//    Required Initializers
//    Required သတ်မှတ်ထားတဲ့ initializer တွေကို subclass တွေမှာပြန် implement လုပ်ဖို့လို
//    Implement လုပ်တဲ့နေရာမှာ အသစ်ကြေညာထားတဲ့ variable တွေကိုပါ initialize လုပ်ပေးရမယ်။
//    class Animal { //<- 1
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//
//        required init?(emptyableName : String) {
//            if emptyableName.isEmpty {return nil}
//            else {self.name = emptyableName} //<- 2
//        }
////
//        required convenience init() { //<- 3
//            self.init(name : "dog")
//        }
//    }
//
//    class Cat : Animal { //<- 1
//        var skinColor : String = "black"
//        init(skinColor : String, name : String) {
//            self.skinColor = skinColor
//            super.init(name: name)
//        }
//
//        required init?(emptyableName: String) {
//            super.init(emptyableName: emptyableName) //<- 2
//        }
//
//        required convenience init() {
//            self.init(skinColor: "blue", name: "dog") //<- 3
//        }
//    }

    

//    Deinitalization
//   uses deinit {}
    
//  getters / setters
//    class Animal {
//        var identity : String = "Cat"
//
//        func setIdentity(identity : String) {
//            self.identity = identity
//        }
//
//        func getIdentity() -> String{
//            return identity
//        }
//    }
//
//    let animal = Animal()
//
//    //Getters
//    let _ = animal.identity
//    let _ = animal.getIdentity()
//
//    //Setters
//    animal.identity = "Dog"
//    animal.setIdentity(identity: "Dog")
    
    
    
//    overriding getters / setters
//    class Animal {
////        var identity : String {
////            get {
//////                return identity //will crash due to recursive loop
////                return "Some Value"
////            }
////            set(value) {
////                if value.isEmpty {
////                    self.identity = "unknown creature"
////                }
////
////            }
////        }
//
//    }
    
//    let animal = Animal()
//    animal.identity = "Dog"
//    print(animal.identity)
    
    
//    instance variable vs type variable
//    instance method vs type method
//
//    class Animal  {
//        var name : String = ""
//
//        static let what = "This is an Animal"
//        init(_ name : String) {
//            self.name = name
//        }
//
//        func sleep() {
//            print("Animal goes to sleep")
//        }
//
//        static func eat() {
//            print("Animal eats")
//        }
//    }
//
//    let animal = Animal("")
//    let _ = animal.name //Instance variable
//    animal.sleep()
//    print(Animal.what)
//    print(Animal.eat())
    
    
    
//  property overriding && method overriding
    
//    class Animal {
//        var name : String
//
//        init(name : String) {
//            self.name = name
//        }
//
//        func eat() {
//            print("\(name) eats grass")
//        }
//    }
//
//    let animal = Animal(name: "Cat")
//    print(animal.eat())
    
//    class Cat : Animal {
//
//        override func eat() {
//            print("\(name) eats fish")
//        }
//    }
////
//    let animal = Cat(name: "Cat")
//    print(animal.eat())

    
// struct
//    No Inheritance
//    Default Initialization
//    struct Animal {
//        //No need for init() method -> auto generated
//        var name : String
//        var skinColor : String
//    }
//
//    let animal = Animal(name: "Cat")
//    print(animal.name)
    
// Same as no init()
//    struct Animal {
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//    }
    
//    No Initialization
//    struct Animal {
//        var name : String
//    }
//
//    struct Cat : Animal {
//
//    } //compile time error
    
    
//  Inherit လုပ်လို့မရတဲ့အတွက်ကြောင့်မို့ inheritance နဲ့ဆိုင်တဲ့ method တွေသုံးလို့မရပါဘူး။​ Ex, covenience initializers
//    initializer ထဲမှာဆိုရင် designated initializer နဲ့ failable initializer သာသုံးလို့ရပါမယ်။
//    struct Animal {
//        var name : String
//        init?(name : String) {
//            self.name = name
//        }
//    }
    
    
//    Reference Data Type vs Value Type
//    class cAnimal {
//        var name : String = "Cat"
//    }
////
//    struct sAnimal {
//        var name : String = "Cat"
//    }
//
//    let canimal1 = cAnimal()
//    let canimal2 = canimal1
//    print(canimal1.name) //Print "Cat"
//    print(canimal2.name) //Print "Cat"
//    canimal1.name = "Dog"
//    print(canimal1.name) //Print "Dog"
//    print(canimal2.name) //Print "Dog"
////
//    var sanimal1 = sAnimal()
//    var sanimal2 = sanimal1 // sanimal2 != sanimal1
//    print(sanimal1.name) //Print "Cat"
//    print(sanimal2.name) //Print "Cat"
//    sanimal1.name = "Dog"
//    print(sanimal1.name) //Print "Dog"
//    sanimal2.name = "Something"
//    print(sanimal2.name) //Print "Cat"
    
    
//    Enumerations
//    enum WeekDay : String {
//        case Mon
//        case Tue
//        case Wed
//        case Thurs
//        case Fri
//    }
//
//    print(WeekDay.Mon.rawValue)
//
    
    
//    Using with switch
//    switch WeekDay.Fri {
//    case WeekDay.Mon:
//        print("Today is Monday")
//    case WeekDay.Tue:
//        print("Today is Tuesday")
//    case WeekDay.Wed:
//        print("Today is Wednesday")
//    case WeekDay.Thurs:
//        print("Today is Thursday")
//    case WeekDay.Fri:
//        print("Today is Friday")
//    }
    
    
//    Make enum iterable
//    enum WeekDay : CaseIterable {
//        case Mon
//        case Tue
//        case Wed
//        case Thurs
//        case Fri
//    }
////
//    for weekday in WeekDay.allCases {
//        print(weekday)
//    }
    
    
//  Associated values
//    enum Shape {
//        case Rectangle(x : Int, y: Int)
//        case Square(x: Int)
//        case Sky
//    }
////
//    let rectangle = Shape.Rectangle(x: 100, y: 30)
//    switch rectangle {
//    case Shape.Rectangle(x: 50, y: 50):
//        print("This is it. Same rectangle")
//    case Shape.Rectangle(x: 100, y: 30):
//        print("This is it. Same rectangle")
//    default:
//        print("Nope")
//    }
    
    
//    Raw values
//    enum WeekEnd : String {
//        case Sat = "Saturday"
//        case Sun = "Sunday"
//    }
//
//    print(WeekEnd.Sat.rawValue)
    
//====================
    /*
     Exercise
     Steps
     1. Create an enum for calculation operator
     2. Replace switch statement string check with enum type
     */
//====================
//Closures
//Closure init

//Exercise
//Conver the following function to closure
//    func sayHello() {
//        print("hello functions")
//    }

//Assigning to variable
//    let variable = { (value : String, value2 : String) -> String in
//        return "\(value) & \(value2)"
//    }

//    print(variable("cat", "dog"))

    
//   Assigning closure to a variable & pass as parameter value
//    var summationformula = { (num1 : Int, num2: Int) -> Int in
//        return num1 + num2
//    }
//
//    func calculate (num1: Int, num2 : Int, formula : (Int, Int) -> Int) {
//        print(formula(num1, num2))
//    }
//
//    calculate(num1: 10, num2: 10, formula: { (num1, num2) -> Int in return num1 * num2 })
//
//    calculate(num1: 10, num2: 10, formula: summationformula)



//Closure Type
//    let variable = { (value : String, value2 : String) -> String in
//        return "\(value) & \(value2)"
//    }
//
//    var lateClosure : ((String, String) -> Void)?
//    lateClosure = { (name : String, phone : String) -> Void in
//        print("\(name) & \(phone)")
//    }
//
//    var variable2 : ((String, String) -> String)?
//    variable2 = variable //Optional closure
//    print(variable2!("bread", "toast"))
    
//    let sum = { (value1 : Int, value2 : Int) -> Int in
//        return value1 + value2
//    }

//    print(sum(1,2))
    
//Closure as function parameter - syntax
    func calculate(num1 : Int,
                   num2 : Int,
                   formula : (Int, Int) -> Int) {
        print(formula(num1, num2))
    }

//    calculate(num1: 10, num2: 20, formula: {(num1, num2) -> Int in
//        return num1 * num2
//    })
//
//    calculate(num1: 10, num2: 20, formula: {(value1, value2) -> Int in
//        return value1 + value2 //full syntax
//    })
//
//    calculate(num1: 10, num2: 20, formula: { (value1, value2) -> Int in
//        value1 + value2 //omit return keyword
//    })
//
//    calculate(num1: 10, num2: 20) { value1, value2 -> Int in
//        value1 + value2 //no parameter parenthesis
//    }
//
//    calculate(num1: 10, num2: 20) { (value1, value2) in value1 + value2 } // omitting return type
//
//    calculate(num1: 10, num2: 20, formula: { $0 + $1 }) //Shorthand

//Trailing closure - syntax
//    var fruits = [String]()
//
//    fruits.sort(by: { (value1, value2) -> Bool in
//        return value1 > value2
//    })
//
//    fruits.sort { (value1, value2) -> Bool in
//        return value1 > value2
//    }
    
//Exercise
//omit return keyword
//omit return type
//omit remove paramthesis
//shorthand
    
//    fruits.sort { (value1, value2) -> Bool in
//        value1 > value2
//    }
//
//    fruits.sort { (value1, value2) in
//        value1 > value2
//    }
//
//    fruits.sort { value1, value2 in
//        value1 > value2
//    }
//
//    fruits.sort { $0 > $1 }
    
//    fruits.sort { (value1, value2) -> Bool in
//        return value1 > value2
//    }

//    calculate(num1: 10, num2: 20) { //Trailing closure
//        $0 + $1
//    }
    

//Escaping closure vs non escaping closure
//Default -> non escaping closure
//Non Escaping Closure
//    func someFunction(closure : () -> Void) {
//        closure()
//
//    }
//
//    someFunction { //Trailing closure
//        print("hello non escaping closure")
//    }
   
//Escaping closure
//    func someFunction(closure : @escaping () -> Void) {
//
//        //Async eg, network call
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {(
//            closure()
//        )})// Execute after 2 seconds
//
//    }
////
//    someFunction {
//        print("hello non escaping closure")
//    }

//Exercise - Pop Quiz
    /*
     1) Default Clousure are escaping - T/F
     2) When to use escaping closure?
         a) Parameter ထဲထည့်ထားတဲ့ closure သည် parent function ထက် lifetime ပိုကြာရင် သုံးတယ်။
         b) Parameter ထဲထည့်ထားတဲ့ closure သည် parent function နှင့် lifetime တူရင် သုံးတယ်။
     */
    

//autoclosure
//Expression အနေနဲ့ pass လုပ်ပေးလိုက်တဲ့ function parameter ကို automatically closure တစ်ခုအဖြစ်ပြောင်းလဲပေးတယ်။
//What is expression?
//    print("hello, world")
//    var a = ""
//    func sum () -> Int {
//        return 0
//    }
    
//
//    func someFunction(closure : @autoclosure () -> Void /*expression*/) {
//        closure()
//    }

//    someFunction(closure : {() -> Void in
//        print("hello closure")
//    })
    
//    someFunction(closure: print("hello auto closure") )
    
    
//Exercise
    
//Convert formula closure to autoclosure & implement formulae for plus, minus, multiply
    func calculate(calculation : @autoclosure () -> Int) {
        print(calculation())
    }
////Calculate 1 + 2
    calculate(calculation: 1 + 2)
////Calculate 1 * 2
    calculate(calculation: 1 * 2)
////Calculate 1 / 2
    calculate(calculation: 1 / 2) //expression
    
    func calculate2(calculation :() -> Int) {
        print(calculation())
    }
    
    calculate2(calculation: { 1 + 2 }) //closure
    
    calculate2(calculation: { 1 * 2 })
    
    calculate2(calculation: { 1 / 2 })

    
    
    
    
    
    
    
    
    
    
//    let boss = Boss(tasks: ["making proposals", "getting appointments with clients"])
//    boss.hireEmployee(employee: Employee())
//    boss.doWork()
//
    
    
    
}

//create a protocol / delegate
//protocol AnimalBehaviour {
//    var language : String { get  } //property protocol
//    init(language : String) //init protocol
//    func eat(stuff: String) //method protocol
//    func speak()
//}
//
////implementing / conforming to protocol
//class cAnimal : AnimalBehaviour {
//    var language: String
//
//    required init(language: String) {
//        self.language = language
//    }
//
//    func eat(stuff: String) {
//
//    }
//
//    func speak() {
//
//    }
//
//    //implement here
//}

//optional protocol
@objc protocol AnimalBehaviour {
    var language : String { get set } //property protocol
    init(language : String) //init protocol
    func eat(stuff: String) //method protocol
    @objc optional func speak()
}
//
////implementing / conforming to protocol
//class cAnimal : AnimalBehaviour {
//    var language: String
//
//    required init(language: String) {
//        <#code#>
//    }
//
//    func eat(stuff: String) {
//        <#code#>
//    }
//
//    //implement here
//}


//Protocol as type
//protocol Animal {
//
//}
////
//class Lion : Animal { //Lion is an animal
//
//}
//
//class Monkey : Animal { //Monkey is an animal
//
//}
//
//
//class AnimalKingdom {
//    var animals = [Animal]()
//
//    init(animals : [Animal]) {
//        self.animals = animals
//    }
//}

//let animalKingdom = AnimalKingdom(animals: [Lion(), Monkey()])
//print(animalKingdom.animals) //prints [Lion, Monkey]


//Delegation
//protocol Work {
//    func getThingsDone(task : String)
//}
//
//class Employee : Work {
//    func getThingsDone(task: String) {
//        print("Working on \(task)")
//    }
//}
//


//class Boss {
//    var employee : Work?
//    var tasks : [String]
//    init(tasks: [String]) {
//        self.tasks = tasks
//    }
//
//    func hireEmployee (employee : Employee) { //set delegation
//        self.employee = employee
//    }
//
//    func doWork() {
//        for task in tasks {
//            employee?.getThingsDone(task: task)
//        }
//    }
//}



//Protocol Inheritance
//protocol Animal {
//
//}
//
//protocol Amphibian : Animal {
//
//}

//Protocol Composition
//class Crocodile : Amphibian, Animal {
//
//}



//Extension - add new functionalities to an existing class, structure, enumeration or protocol type
protocol Work {
    func getThingsDone(task : String)
}
//
//class Employee : Work {
//    func getThingsDone(task: String) {
//        print("Working on \(task)")
//    }
//}
//
@objc protocol Human {
    @objc optional func relax()
}

//class Employee : Work, Human {
//    func getThingsDone(task: String) {
//        print("Working on \(task)")
//    }
//}

class Employee : Work {
    func getThingsDone(task: String) {
        print("Working on \(task)")
    }
}

extension String { //struct extension
    func withModifiedString() -> String {
        return "\(self) ..."
    }
}

extension Human { //protocol extension
    func eat() {
       print("a human eats")
    }
}

extension Employee : Human {
    
}


