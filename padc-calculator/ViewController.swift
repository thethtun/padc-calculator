//
//  ViewController.swift
//  padc-calculator
//
//  Created by Thet Htun on 8/9/19.
//  Copyright © 2019 padc-cal. All rights reserved.
//

import UIKit

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
            calculate(key: "+", queryToCalculate: query)
        } else if query.contains("-") {
            calculate(key: "-", queryToCalculate: query)
        } else if query.contains("*") {
            calculate(key: "*", queryToCalculate: query)
        } else if query.contains("/") {
            calculate(key: "/", queryToCalculate: query)
        }
        
    }
    
    func calculate(key : Character, queryToCalculate : String) {
        let numbers = queryToCalculate.split(separator: key)
        let num1 = Int(String(numbers[0])) ?? 0
        var num2 = 0
        if numbers.count > 1 {
            num2 = Int(String(numbers[1])) ?? 0
        }
        
        switch key {
        case "+":
            labelresult.text = "\(String(num1 + num2))"
            break
        case "-":
            labelresult.text = "\(String(num1 - num2))"
            break
        case "*":
            labelresult.text = "\(String(num1 * num2))"
            break
        case "/":
            labelresult.text = "\(String(num1 / num2))"
            break
        default:
            labelresult.text = "0"
        }
    }
    
    func addNumberString(value : String) {
        if labelresult.text == "0" {
            labelresult.text = ""
        }
        labelresult.text = "\(labelresult.text ?? "")\(value)"
    }
    

}
