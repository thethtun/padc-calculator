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
//    print(animal.name)
    

//Initialization using init()
//    class Animal {
//        var name : String
//
//        init(name : String) {
//            self.name = name
//        }
//    }

    
//  Init() overloading
//    class Animal {
//        var name : String = ""
//        init(name : String) {
//            self.name = name
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
//    let cat = Animal(identity: "cat")
    

//Designated initializer



//Convenience initializer
//    class CatGenerator { //<- 1
//        var name : String
//        var skinColor : String
//        var numberOfTails : Int
//        var numberOfEyes : Int
//          //<-2
////        init(name : String, skinColor : String, numberOfTails : Int, numberOfEyes : Int) {
////            self.name = name
////            self.skinColor = skinColor
////            self.numberOfTails = numberOfTails
////            self.numberOfEyes = numberOfEyes
////        }
////
//////        convenience init(name : String) { //<- 3
//////            self.init(name : name, skinColor : "brown", numberOfTails : 1, numberOfEyes : 2)
//////        }
//    }
    
    
//
//    <- 2
//    let blackcat = CatGenerator(name: "joker", skinColor: "black", numberOfTails: 1, numberOfEyes: 2)
//    let goldencat = CatGenerator(name: "woo kone", skinColor: "golden", numberOfTails: 1, numberOfEyes: 2)
//
//    <- 4
//    let normalcat = CatGenerator(name: "garfield")

    
    /*
    Designated Initializer သည် super class မှာရှိတဲ့  Designated Initializer ကိုပဲခေါ်လို့ရတယ်။
     current class မှာရှိတဲ့ DI ကို ခေါ်သုံးလို့မရဘူး
     Convenience Initializer သည် curret class ရဲ့ DI ကို ခေါ်သုံးလို့ရတယ်။
     */

//    class SuperCatGenerator : CatGenerator { //<- 1
//        var superPower : String
//        init(superPower : String) {
//            self.superPower = superPower
//            super.init(name: "meow meow", skinColor: "rainbow", numberOfTails: 9, numberOfEyes: 3)
//        }
//
////        convenience init() { //<- 2
////            self.init(superPower: "flying")
////        }
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
//            }
//            self.name = name
//        }
//    }
//    let animal = Animal(name: "")
//    print(animal) //prints nil <- 1
//    let animal = Animal(name: "dog")
//    print(animal?.name ?? "unknown creature") //<- 2 unwrapping with nil coalensing operator
//    guard let uwrappedAnimal = animal else {return} //<- 3 unwrapping with guard let statement
//    print(uwrappedAnimal.name)
    
    
//    Required Initializers
//    Required သတ်မှတ်ထားတဲ့ initializer တွေကို subclass တွေမှာပြန် implement လုပ်ဖို့လို
//    Implement လုပ်တဲ့နေရာမှာ အသစ်ကြေညာထားတဲ့ variable တွေကိုပါ initialize လုပ်ပေးရမယ်။
//    class Animal { //<- 1
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//
////        required init?(emptyableName : String) {
////            if emptyableName.isEmpty {return nil}
////            else {self.name = emptyableName} //<- 2
////        }
////
//////        required convenience init() { //<- 3
//////            self.init(name : "dog")
//////        }
//    }

//    class Cat : Animal { //<- 1
//        var skinColor : String = "black"
//        init(skinColor : String, name : String) {
//            self.skinColor = skinColor
//            super.init(name: name)
//        }
//
////        required init?(emptyableName: String) {
////            super.init(emptyableName: emptyableName) //<- 2
////        }
////
//////        required convenience init() {
//////            self.init(skinColor: "blue", name: "dog") //<- 3
//////        }
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
    
//    let animal = Animal()
    
    //Getters
//    let _ = animal.identity
//    let _ = animal.getIdentity()
    
    //Setters
//    animal.identity = "Dog"
//    animal.setIdentity(identity: "Dog")
    
    
    
//    overriding getters / setters
//    class Animal {
//        var identity : String {
//            get {
////                return identity //will crash due to recursive loop
//                return "Some Value"
//            }
//            set(value) {
//                if value.isEmpty {
//                    self.identity = "unknown creature"
//                }
//
//            }
//        }
//    }
    
//    let animal = Animal()
//    animal.identity = "Dog"
//    print(animal.identity)
    
    
//    instance variable vs type variable
//    instance method vs type method
    
    
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
    
//    let animal = Animal(name: "Cat")
//    print(animal.eat())
    
//    class Cat : Animal {
//
//        override func eat() {
//            print("\(name) eats fish")
//        }
//    }
//
//    let animal = Cat(name: "Cat")
//    print(animal.eat())

    
    
// struct
//    struct Animal {
//        //No need for init() method -> auto generated
//        var name : String
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
//
//    struct sAnimal {
//        var name : String = "Cat"
//    }
    
//    let canimal1 = cAnimal()
//    let canimal2 = canimal1
//    print(canimal1.name) //Print "Cat"
//    print(canimal2.name) //Print "Cat"
//    canimal1.name = "Dog"
//    print(canimal1.name) //Print "Dog"
//    print(canimal2.name) //Print "Dog"
//
//    var sanimal1 = sAnimal()
//    let sanimal2 = sanimal1
//    print(sanimal1.name) //Print "Cat"
//    print(sanimal2.name) //Print "Cat"
//    sanimal1.name = "Dog"
//    print(sanimal1.name) //Print "Dog"
//    print(sanimal2.name) //Print "Cat"
    
    
//    Enumerations
//    enum WeekDay {
//        case Mon
//        case Tue
//        case Wed
//        case Thurs
//        case Fri
//    }
//
//    print(WeekDay.Mon)
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
//
//    for weekday in WeekDay.allCases {
//        print(weekday)
//    }
    
    
//  Associated values
//    enum Shape {
//        case Rectangle(x : Int, y: Int)
//        case Square(x: Int)
//        case Sky
//    }
//
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
    
    
//    func calculate(num1 : Int, num2 : Int, formula : (Int, Int) -> Int) {
//        print(formula(num1, num2))
//    }
    
//    calculate(num1: 10, num2: 20, formula: {(value1, value2) -> Int in
//        return value1 + value2
//    })
    
//    calculate(num1: 10, num2: 20, formula: {(value1, value2) -> Int in
//        value1 + value2
//    })
    
//    calculate(num1: 10, num2: 20) { value1, value2 -> Int in
//        value1 + value2
//    }
    
//    calculate(num1: 10, num2: 20) { value1, value2  in value1 + value2 }
    
//    calculate(num1: 10, num2: 20, formula: { $0 + $1 }) //Shorthand
    
//    calculate(num1: 10, num2: 20) { //Trailing closure
//        $0 + $1
//    }
    
    
//   Assigning closure to a variable
    
//    var formula = {(num1 : Int, num2: Int) -> Int in
//        return num1 + num2
//    }

//    func calculate (num1: Int, num2 : Int, formula : (Int, Int) -> Int) {
//        print(formula(num1, num2))
//    }
//
//    calculate(num1: 10, num2: 10, formula: formula)

//    formula = { (num1:Int, num2:Int) -> Int in
//        return num1 * num2
//    }

//    calculate(num1: 10, num2: 10, formula: formula)

//    Escaping closure vs non escaping closure
    
//    var completionHandler : () -> Void = { }
//    func calculate (num1: Int, num2 : Int, formula : (Int, Int) -> Int, completion: @escaping () -> Void) {
//        let result = formula(num1, num2)
//
//        completionHandler = completion
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { //wait for 3 seconds - async network call
//            completion()
//        }
//    }
//
//
//    calculate(num1: 10, num2: 10, formula: {$0 + $1}, completion: {
//        print("Total result is ")
//    })
//
//    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { //wait for 1 seconds
//        completionHandler()
//    }
//
    

//autoclosure
//    var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//    print(customersInLine.count)
//    // Prints "5"
//
//    let customerProvider = { () -> String in return customersInLine.remove(at: 0) }
//    print(customersInLine.count)
//    // Prints "5"
//
//    print("Now serving \(customerProvider())!")
//    // Prints "Now serving Chris!"
//    print(customersInLine.count)
//    // Prints "4"
    

    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
}

//create a protocol / delegate
//protocol AnimalBehaviour {
//    var language : String { get set } //property protocol
//    init(language : String) //init protocol
//    func eat(stuff: String) //method protocol
//    func speak()
//}

//implementing / conforming to protocol
//class cAnimal : AnimalBehaviour {
//    //implement here
//}

//optional protocol
//@objc protocol AnimalBehaviour {
//    var language : String { get set } //property protocol
//    init(language : String) //init protocol
//    func eat(stuff: String) //method protocol
//    @objc optional func speak()
//}

//implementing / conforming to protocol
//class cAnimal : AnimalBehaviour {
//    //implement here
//}


//Protocol as type
//protocol Animal {
//
//}
//
//class Lion : Animal {
//
//}
//
//class Monkey : Animal {
//
//}


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

//class Employee : Work {
//    func getThingsDone(task: String) {
//        print("Working on \(task)")
//    }
//}

//class Boss {
//    var work : Work?
//    var tasks : [String]
//    init(tasks: [String]) {
//        self.tasks = tasks
//    }
//
//    func hireEmployee (employee : Employee) { //set delegation
//        self.work = employee
//    }
//
//    func doWork() {
//        for task in tasks {
//            work?.getThingsDone(task: task)
//        }
//    }
//}

//let boss = Boss(tasks: ["making proposals", "getting appointments with clients"])
//boss.hireEmployee(employee: Employee())
//boss.doWork()

//Protocol Inheritance


//Protocol Composition


//Extension - add new functionalities to an existing class, structure, enumeration or protocol type
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
//@objc protocol Human {
//    @objc optional func relax()
//}

//class Employee : Work, Human {
//    func getThingsDone(task: String) {
//        print("Working on \(task)")
//    }
//}

//extension Employee : Human { //class extension
//
//}

//extension String { //struct extension
//    func withModifiedString() -> String {
//        return "\(self) ..."
//    }
//}

//extension Human { //protocol extension
//    func eat() {
//       print("a human eats")
//    }
//}

//extension Employee : Human {
//
//}

//let e = Employee()
//e.eat()
