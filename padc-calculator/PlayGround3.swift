//
//  PlayGround3.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/15/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import Foundation
import UIKit

//class Refrigerator {
//    var fruits : [Fruit?]
//    init(fruits : [Fruit?]) {
//        self.fruits = fruits
//    }
//
//    //Calls before being released from memory
//    deinit {
//        print("refrigerator is destroyed")
//    }
//}
//
//class Fruit {
//    var name : String
//    unowned var whereIsIt : Refrigerator?
//    init(name : String, whereIsIt : Refrigerator?) {
//        self.name = name
//        self.whereIsIt = whereIsIt
//    }
//
//    //Calls before being released from memory
//    deinit {
//        print("\(name) is being thrown away")
//    }
//}
////
////
//var samsung : Refrigerator?
//var apple : Fruit?

func play3() {
//    class Person{
//        var property : Property?
//        init(property : Property?) {
//            self.property = property
//        }
//
//        deinit {
//            print("Person object is deallocated")
//        }
//    }
//
//    class Property {
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//
//        deinit {
//            print("property object is deallocated")
//        }
//    }
//
//
//
//    var James = Person(property: Property(name : "A house"))
//    print(James.property?.name) //weak (သို့) unowned သတ်မှတ်ထားခြင်းမရှိတဲ့အတွက်ကြောင့် Property object သည် James variable clear ဖြစ်သွားမှ clear လုပ်ခံရပါတယ်။
    
//    class Person{
//        unowned var property : Property?
//        init(property : Property?) {
//            self.property = property
//        }
//
//        deinit {
//            print("Person object is deallocated")
//        }
//    }
//
//    class Property {
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//
//        deinit {
//            print("property object is deallocated")
//        }
//    }
//
//
//     /*
//     ဒီနေရာမှာ Person ထဲမှာ ရှိတဲ့ Property attribute ကို
//     unowned လုပ်ထားပါတယ်။
//
//     Object pass လုပ်တဲ့နေရာမှာ variable မကြေညာပဲ
//     တိုက်ရိုက် pass လုပ်ထားပါတယ်။
//
//     unowned variable ဖြစ်တဲ့အတွက် ARC မှအလိုအလျှောက်ရှင်းထုတ်ပေးသွားပါတယ်။
//     ဒါကြောင့် run ကြည့်လိုက်တဲ့အခါ Property Object အရင်ဆုံး nil ဖြစ်နေတာကို
//     တွေ့ရပါမယ်။ Create လုပ်ပြီးပြီးချင်း Destroy လုပ်ခံလိုက်ရလို့ပါ။
//
//     အဲ့လိုမဖြစ်အောင် variable တစ်ခုနဲ့ assign လုပ်ပြီးမှ
//     Person(name : property)ဆိုပြီးထည့်ပေးလို့ရပါတယ်။
//
//     */
//    var James = Person(property: Property(name : "A house"))
//    print(James.property?.name) //Object Deallocated Error
    
//    class Person{
//        weak var property : Property?
//        init(property : Property?) {
//            self.property = property
//        }
//
//        deinit {
//            print("Person object is deallocated")
//        }
//    }
//
//    class Property {
//        var name : String
//        init(name : String) {
//            self.name = name
//        }
//
//        deinit {
//            print("property object is deallocated")
//        }
//    }
//
//
//    var James = Person(property: Property(name : "A house"))
//    print(James.property?.name) //nil
    

        
//        apple = Fruit(name: "apple", whereIsIt: samsung)
//
//        apple = nil //Throws away apple
//
//        samsung?.fruits = [apple]
//        samsung = nil
//        apple = nil //Now apple remains in memory

//released referigerator reference
//        samsung?.fruits = []
//        apple = nil //Throws away apple

//what happens when memory leaks
//        for _ in 0...600000 {
//            //add a new refrigerator with a banana
//            var LG : Refrigerator? = Refrigerator(fruits: [Fruit]())
//            var banana : Fruit? = Fruit(name: "banana", whereIsIt: LG)
//            LG?.fruits = [banana]
//
//            //try to clean up just after creation
//            LG = nil //nothing happens
//
//            /*
//             Exercise - 1
//             Fix memory leak
//             */
////            LG?.fruits = []
////            LG = nil
//        }

//How to handle memory leak
//        samsung = Refrigerator(fruits: [Fruit]())
//
//        samsung?.fruits = [
//            Fruit(name: "apple", whereIsIt: samsung),
//            Fruit(name: "banana", whereIsIt: samsung),
//            Fruit(name: "pineapple", whereIsIt: samsung)]
//
////        samsung = nil //Trying to destroy refrigerator -> But no vail
//
//        for fruit in samsung!.fruits {
//            fruit!.whereIsIt = nil //remove from refrigerator
//        }
////
//        samsung = nil //Everything released

    
    
//Fuctional Programming
//    var fruits = ["apple", "orange", "pineapple"]
    
    
//prints only fruits with apple
//    var apples = [String]()
//    for fruit in fruits {
//        if fruit.contains("apple") {
//            apples.append(fruit)
//        }
//    }
//    print(apples)
    

//filter
//    print(
//        fruits.filter({ (fruit) -> Bool in
//            return fruit.contains("apple")
//        })
//    )
//
//    print(
//        fruits.filter{ (fruit) -> Bool in
//            return fruit.contains("apple")
//        } //Trailing closure
//    )
//
//    print(
//        fruits.filter{$0.contains("apple")} //Trailing closure
//    )
//    print(fruits.filter({(fruit) -> Bool in
//        return fruit.contains("apple")
//    })) //prints ["apple", "pineapple"]

    
//map
    
//    print(
//        fruits.map({ (fruit) -> String in
//            return "I ate \(fruit)"
//        })
//    )

//    print(
//        fruits.map({ (fruit) -> Int in
//            return fruit.count
//        })
//    )
    

//    print(
//        fruits.map({ (fruit) -> Int in
//            return fruit.count
//        })
//    )
    
//reduce
//    print(
//    fruits.reduce("", { (result, value) -> String in
//        /*
//         ""
//         "apple"
//         "appleorange"
//         "appleorangepineapple"
//         */
//        return "\(result)\(value)"
//        })
//
//    )
    
//    var numbers = [1,2,3,4,5,6,7,8,10]
//
//    numbers.reduce(0, {$0 + $1})
    
//
//    fruits.append("spoiled orange")
//    fruits.append("spoiled apple")
//    print(fruits) //[apple, orange, pineapple, spoiled orange, spoiled apple]
//    let filteredFruits = fruits.map { (fruit) -> String? in
//        if fruit.contains("spoiled") {
//            return nil
//        } else {
//            return fruit
//        }
//    }
//
//    print(filteredFruits)
//
//    print(filteredFruits.compactMap{$0})
//
//
//Combining functions => map, filter, reduce
    
//Example 1
    
//    print(
//    fruits.filter{
//            $0.contains("apple")
//        }.map {
//            $0.reversed()
//        }.map {
//            $0.count
//        }.filter {
//            $0 % 2 == 0
//        }
//    )
//
//    print(
//        fruits.filter{
//            $0.contains("apple") //Check if keyword contains apple
//        }.map{
//            $0.reversed() //Reverse the whole string
//        }.map { //Loop through [Character]
//            $0.reduce("") { "\($0)\($1)" } //Combine [Character] into a String
//        }
//
//    ) //prints ["elppa", "elppaenip"]
    
    
//Example 2
//    print(
//        fruits.reduce("I ate ", {(result, fruit) -> String in
//            "\(result), \(fruit)"
//        }).split(separator: ",")
//            .map({ (value) -> String in
//                String(value)
//            }).enumerated().map({(index, value) -> String in
//                if index == 0 || index == 1 {
//                   return value
//                } else {
//                    return ", \(value.trimmingCharacters(in: CharacterSet.init(charactersIn: " ")))"
//                }
//            }).reduce("", {"\($0)\($1)"})
//    )
    
    
//Exercise
    /*
    STEPS
     1. Create a Food protocol and conform to Fruit, Meat, Drink
     2. Create a Refrigerator object which takes in [Food]
     3. Instantiate a new refrigerator object
     4. Add Fruit, Meat, Drink into refrigerator
     5. Eat fruit & drink -> Discard meat (remove fruit & drink from item list)
     6. Print out meat as remaining item //Meat -> String
     */
    
//    print(
//        fruits.reduce(into: "result", { $0.append($1) })
////        fruits.reduce("result", { $0.append($1) })
//    )
//    print(
//        fruits.reduce("result", { "\($0)\($1)" })
//    )
    
//    var a = [1,2,3,4,5]

//    class Fruit : Food{
//        var name : String
//        var price : Int
//
//        init(name : String, price : Int) {
//            self.name = name
//            self.price = price
//        }
//    }
//
//    class Drink : Food {
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
//    class Meat : Food {
//        var name : String
//        var price : Int
//
//        init(name : String, price : Int) { //Designated Initializers
//            self.name = name
//            self.price = price
//        }
//    }
//
//    class Refrigerator {
//        var food : [Food]
//        init(food : [Food]) {
//            self.food = food
//        }
//    }
//
//    let refrigerator = Refrigerator(food:
//        [Fruit(name: "apple", price: 1000),
//         Meat(name: "pork", price: 4000),
//         Drink(name: "pepsi", price: 400)])
//
//    let _ = refrigerator.food.filter{
//        if $0 is Meat {
//            print("\(($0 as! Meat).name) is remaining...")
//            return true
//        }
//        return false
//    }
//
//
    

    /*
     Exercise - 2
     Implement the following logic using functional programming
     Use the same source of variable
     The result must print ["soda", "pepsi", "cola", "coffee"]
     */
//
//    let drinks = ["ados", "ispep", "aloc", "eeffoc"]
//    print(
//        drinks.map {
//            $0.reversed()
//            }.map {
//                String($0)
//        }
//
//    )
//
    
    
    
//    var correctedDrink = [String]()
//    for drink in drinks {
//        var reversedDrink = ""
//        for value in drink.reversed() {
//            reversedDrink = "\(reversedDrink)\(value)"
//        }
//        correctedDrink.append(reversedDrink)
//    }
//    print(correctedDrink) //must print ["soda", "pepsi", "cola", "coffee"]

    
// Generics
//    func printString(value : String) {
//        print(value)
//    }
//
//    func printInt(value : Int) {
//        print(value)
//    }
////
//    func printDouble(value : Double) {
//        print(value)
//    }
////
//    func printBool(value : Bool) {
//        print(value)
//    }
//
//    func printAnything<T>(value : T) {
//        print(value)
//    }
//
//    printAnything(value: "hello, world")
//    printAnything(value: 1)
//    printAnything(value: 2.0)
//    printAnything(value: true)
    
    
//Common Generic Type
//    var fruits : Array<String> = Array()
//    var cars : Set<String> = Set()
    
//Build a generics
 
//    class Fruit : Food {
//        var name : String = ""
//        init(name : String) {
//            self.name = name
//        }
//    }
//
//    class Drink : Food {
//        var name : String = ""
//        init(name : String) {
//            self.name = name
//        }
//    }
//    var food : [Food] = [Fruit(name: "apple"), Drink(name: "cola")]
//    var refrigerator = Container(items: food)
//    var backPack = Container(items: food)
//    var platicBag = Container(items: food)
//    var shoppingCart = Container(items: food)
//
//    var studentPack = Container(items: [Stationary()])

}


//struct Container<T: Item> {
//    var items : [T]
//
//    func getItems() -> [T] {
//        return items
//    }
//
//    mutating func addItem(value : T) {
//        items.append(value)
//    }
//
//}
//
//protocol Item {
//
//}
//
//class Stationary : Item {
//
//}
//
//class Food : Item {
//
//}


//Generic Extension with where clause
//extension Container where T : Stationary {
//    func getItems() {
//        print("Getting stationary items")
//    }
//}
