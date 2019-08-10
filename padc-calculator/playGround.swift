//
//  playGround.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/10/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import Foundation


func functionName () {
    
}

func sum() -> Int {
    return 0
}

func sumtwonumbers(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

func getFruit () -> [String] {
    return ["apple", "banana"]
}

/*
    Exe - 3
    Convert to functions
    1. fruit, meat, drink
    2. create a refrigerator function (stuffRefrigeratorWithFood)
       three params -> fruit, meat, drink
        return -> refrigerator dictionary
    3. eatDinner() -
        refrigerator param
        eat everything except meat
     4. exe function
 */


func runPlayGround()  {

//Character
//    let alphabetA : Character = "a"
//    print(alphabetA is Character)
  
//String
//    let dinner : String = "barbecue"
//    var dinner = "barbecue"
//    dinner = "hot pot"
//    print(dinner)

    
//String interpolation
//    let food = "barbecue"
//    let drink = "cola"
//    let count = 10
//    let dinner = "I will have \(count) \(food) with \(drink) for dinner"
//    print(dinner)


//Integer
//    In 32 bit -> 2**32 -> ~2 billion
//    let luckyNumber : Int = 7
//    let luckyNumber = 7 //Data Type is integer
//    let luckyNumber : UInt = -7

//Floating Point
//    let pi = 3.14 //Data Type inferred to Double
//    print(pi is Double)
//    let pi : Float = 3.14
//    print(pi is Float)
    
//Boolean
//    let isMale : Bool = true
    
//    Arrays - nondistanct value + same type + ordered
//    var fruits : [String] = ["apple", "orange", "pineapple"]
//    let fruits : [String] = [String]() //empty array
//    let fruits = [String]()
//    fruits.append("lemon")
//    fruits.append("lemon")
//    fruits.remove(at: 0)
//    print(fruits)
    
//    Set - distinct value + same type + unordered
//    var fruits : Set<String> = Set<String>(arrayLiteral: "apple", "orange", "pineapple")
//    let fruits : Set<String> = Set<String>()
//    fruits.insert("apple")
//    fruits.remove("apple")
//    print(fruits)
    
//    Dictionary - nondistinct value - key value pair + same type + unordered
//    var fruits : [String : String] = ["lemon" : "sour", "banana" : "sweet", "durian" : "gross"]
//    var fruits = [String : String]()
//    fruits["pineapple"] = "sweet & sour"
//    fruits["pineapple"] = "sweet sweet"
//    print(fruits)
//    print(fruits["pineapple"]!)
    
    
//=======================

    /*
     Exercise
     ရေခဲသေတ္တာထဲမှာ ပစ္စည်းတွေဝယ်ထည့်မယ်။
     ၁. အသီးအရွက်
     ၂. အသားငါး
     ၃. သောက်စရာ
     
     STEPS
     1. create an array for fruits
     2. create an array for meat
     3. create an array for drinks
     4. create a refrigerator dictionary and store all items in category
     5. have dinner with food in refrigerator (create a string interpolation)
     6. print out remaining items in referigerator
     */
//        let fruits = ["apple", "orange"]
//        let meat = ["pork", "chicken"]
//        let drinks = ["cola", "pepsi", "fanta"]
//        var refrigerator = [String: [String]]()
//        refrigerator["fruits"] = fruits
//        refrigerator["meat"] = meat
//        refrigerator["drinks"] = drinks
//        let dinner = "I had dinner with \(refrigerator["fruits"]!.first), \(refrigerator["meat"]!.first) and \(refrigerator["drinks"]!.first)"
//        print(dinner)
//        refrigerator["fruits"]?.removeFirst()
//        refrigerator["meat"]?.removeFirst()
//        refrigerator["drinks"]?.removeFirst()
//        print(refrigerator)
//
//=======================
    
//    For - In
    
//    for i in 0...10 {
//        print(i) //print from 0 to 10
//    }
//
//    for i in 0..<10 {
//        print(i) //print from 0 to 9
//    }
    
    
//    Condition first - statement second
//    var i = 10
//    while i > 0 {
//        print(i) //print from 10 to 1
//        i -= 1
//    }
    
    /*
     while [Condition] {
        exe statement
     }
     */
  
//    statement first - condition second
//    var i = 10
//    repeat {
//        print(i) //print from 10 to 1
//        i -= 1
//    } while i > 0
    
    /*
     repeat {
        exe statement
     } while [condition]
     */
//    var x = 0
//     if x == 0 {
//
//     } else if x == 1 {
//
//     } else {
//
//    }
 

 
//    switch
//    let fruit = "apple"
//    switch fruit {
//    case "banana":
//        print("nope. no banana")
//    case "lemon":
//        print("ugh... sour!")
//    case "apple":
//        print("Yes. give me an apple")
//    default:
//        print("default print")
//    }
    
//    continue - skip current iteration
//    for i in 0...10 { //5
//        if i == 5 {
//            continue
//        }
//        print(i) // print from 0 to 10 except 5
//    }

//    break - stop current iteration
//    for i in 0...10 {
//        if i == 5 { //5
//            break
//        }
//        print(i) // print from 0 to 4
//    }
    
//    fallthrough - continue to next case
//    let fruit = "apple"
//    switch fruit {
//    case "banana":
//        print("nope. no banana")
//    case "lemon":
//        print("ugh... sour!")
//    case let x where x.starts(with: "app"):
//        print("Yes. I like fruits that start with APP")
//        fallthrough
//    case "apple":
//        print("Yes. give me an apple")
//    default:
//        print("default print")
//    }

    /*
     Exercise - 2
     Steps
     1. loop through all category in refrigerator
     2. if meat -> skip
        else -> eat
     3. print remaining items
     */


//    do {
//        let _ = try isInStock(item: "camera")
//    } catch StockPileError.outOfStock {
//        print("VendingMachineError.invalidSelection")
//    } catch { //Default catch
//        print("undefined error")
//    }
    
//    isInStock(item: "camera")

//    var a : String = ""
//    a = nil
    
//    if let unwrapped = b {
//        print(unwrapped)
//    } else {
//        print("b is nil")
//    }
    // Optional("b")
//    guard let unwrapped = b else {
//        print("b is nil")
//        return
//    }
//    print(unwrapped) // b
//
//
    

}

//functions
//func hello () {
//    print("hello")
//}

//function with parameter
//func sayMyName(name : String) {
//    print(name)
//}

//single return value
//func getAName() -> String {
//    return "Min Min"
//}


//multiple return value
//func getNames() -> (name1 : String, name2 : String) {
//    return ("Lin Lin", "Min Min")
//}

//variadic parameters
//func sum(numbers : Int...) -> Int {
//    var total : Int = 0
//    for number in numbers {
//        total += number
//    }
//
//    return total
//}

//fuction as parameter


//function returning function


//nested function


//
func isInStock(item : String) throws -> String {
    let items = ["laptop", "phone", "tv", "mouse", "keyboard"]
    if items.contains(item) {
        return "In Stock"
    } else {
        throw StockPileError.outOfStock
    }
}

enum StockPileError : Error {
    case outOfStock
}

