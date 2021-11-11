//
//  ViewController.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/9/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

enum Operators : String {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var btnOne : UIButton!
    @IBOutlet weak var btnTwo : UIButton!
    @IBOutlet weak var btnThree : UIButton!
    @IBOutlet weak var btnFour : UIButton!
    @IBOutlet weak var btnFive : UIButton!
    @IBOutlet weak var btnSix : UIButton!
    @IBOutlet weak var btnSeven : UIButton!
    @IBOutlet weak var btnEight : UIButton!
    @IBOutlet weak var btnNine : UIButton!
    @IBOutlet weak var btnZero : UIButton!
    @IBOutlet weak var labelresult : UILabel!
    @IBOutlet weak var btnPlus : UIButton!
    @IBOutlet weak var btnMinus : UIButton!
    @IBOutlet weak var btnMultiply : UIButton!
    @IBOutlet weak var btnDivide : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickOne(_ sender : Any) {
        addNumberString(value: "1")
    }
    
    @IBAction func onClickTwo(_ sender : Any) {
        addNumberString(value: "2")
    }
    
    @IBAction func onClickThree(_ sender : Any) {
        addNumberString(value: "3")
    }
    
    @IBAction func onClickFour(_ sender : Any) {
        addNumberString(value: "4")
    }
    
    @IBAction func onClickFive(_ sender : Any) {
        addNumberString(value: "5")
    }
    
    @IBAction func onClickSix(_ sender : Any) {
        addNumberString(value: "6")
    }
    
    @IBAction func onClickSeven(_ sender : Any) {
        addNumberString(value: "7")
    }
    
    @IBAction func onClickEight(_ sender : Any) {
        addNumberString(value: "8")
    }
    
    @IBAction func onClickNine(_ sender : Any) {
        addNumberString(value: "9")
    }
    
    @IBAction func onClickZero(_ sender : Any) {
        addNumberString(value: "0")
    }
    
    @IBAction func onClickPlus(_ sender : Any) {
        defineResult(query: labelresult.text!)
        addNumberString(value: "+")
    }
    
    @IBAction func onClickMinus(_ sender : Any) {
        defineResult(query: labelresult.text!)
        addNumberString(value: "-")
    }
    
    @IBAction func onClickMultiply(_ sender : Any) {
        defineResult(query: labelresult.text!)
        addNumberString(value: "*")
    }
    
    @IBAction func onClickDivide(_ sender : Any) {
        defineResult(query: labelresult.text!)
        addNumberString(value: "/")
    }
    
    @IBAction func onClickClear(_ sender : Any) {
        labelresult.text = "0"
    }
    
    @IBAction func onClickCalculate(_ sender : Any) {
        defineResult(query: labelresult.text!)
    }
    

    func defineResult(query : String) {
        
        if query.contains("+") {
            calculate(key: Operators.plus, queryToCalculate: query)
        } else if query.contains("-") {
            calculate(key: Operators.minus, queryToCalculate: query)
        } else if query.contains("*") {
            calculate(key: Operators.multiply, queryToCalculate: query)
        } else if query.contains("/") {
            calculate(key: Operators.divide, queryToCalculate: query)
        }
        
        
    }
    
    private var lastCalculationDisplayValue: String = ""
    func calculate(key : Operators, queryToCalculate : String) {
        
        lastCalculationDisplayValue = queryToCalculate
        
        let numbers = queryToCalculate.split(separator: Character(key.rawValue) )
        var num1 : Int = 0
        var num2 : Int = 0
        let numOneStr = String(numbers[0]) // convert to SubString to String
        let numOneInt = Int(numOneStr) // convert from String to Integer
        
        if let unwrappedNumOne = numOneInt {
            num1 = unwrappedNumOne
        }
        
        if numbers.count > 1 {
            //TODO : Format & assign num2 value
            let numTwoStr = String(numbers[1]) // convert to SubString to String
            let numTwoInt = Int(numTwoStr) // convert from String to Integer
            if let unwrappedNumTwo = numTwoInt {
                num2 = unwrappedNumTwo
            }
        }
        
        switch key {
        case Operators.plus:
            labelresult.text = "\(num1 + num2)"
        case Operators.minus:
            labelresult.text = "\(num1 - num2)"
        case Operators.multiply:
            labelresult.text = "\(num1 * num2)"
        case Operators.divide:
            labelresult.text = "\(num1 / num2)"
        }
        
        let calculatedHistory = CalculationHistory(
            id: history.count + 1,
            value: labelresult.text ?? "",
            source: lastCalculationDisplayValue
        )
        history.insert(calculatedHistory, at: 0)
        
    }
    
    
    func addNumberString(value : String) {
        if labelresult.text == "0" {
            labelresult.text = ""
        }
        labelresult.text = "\(labelresult.text ?? "")\(value)"
    }
    

    deinit {
         print("Calculator view controller is released")
    }
}














