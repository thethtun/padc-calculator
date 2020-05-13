//
//  ButtonNumberPadItem_Calculate.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct ButtonNumberPadItem_Calculate: View {
    @Binding var existingResult : String
    
    var body : some View {
        ZStack {
            Rectangle().fill(Color.clear)
            Button(action: {
                self.onTapAction()
            }) {
                Text("=")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            }
            .accentColor(.white)
        }.background(Color(#colorLiteral(red: 0, green: 0.5647058824, blue: 0.3176470588, alpha: 1)))
            .onTapGesture {
                self.onTapAction()
        }
    }
    
    private func onTapAction() {
//        let tempValue = self.existingResult
        
        existingResult = ButtonNumberPadItem_Calculate.defineResult(query: existingResult)
        
    }

    static func defineResult(query : String) -> String {

        if query.contains("+") {
            return ButtonNumberPadItem_Calculate.calculate(key: Operators.plus, queryToCalculate: query)
        } else if query.contains("-") {
            return ButtonNumberPadItem_Calculate.calculate(key: Operators.minus, queryToCalculate: query)
        } else if query.contains("*") {
            return ButtonNumberPadItem_Calculate.calculate(key: Operators.multiply, queryToCalculate: query)
        } else if query.contains("/") {
            return ButtonNumberPadItem_Calculate.calculate(key: Operators.divide, queryToCalculate: query)
        } else {
            return ""
        }


    }

    static func calculate(key : Operators, queryToCalculate : String) -> String {
        let numbers = queryToCalculate.split(separator: Character(key.rawValue) )
        var num1 : Double = 0
        var num2 : Double = 0
        let numOneStr = String(numbers[0]) // convert to SubString to String
        let numOneInt = Double(numOneStr) // convert from String to Float

        if let unwrappedNumOne = numOneInt {
            num1 = unwrappedNumOne
        }

        if numbers.count > 1 {
            //TODO : Format & assign num2 value
            let numTwoStr = String(numbers[1]) // convert to SubString to String
            let numTwoInt = Double(numTwoStr) // convert from String to Float
            if let unwrappedNumTwo = numTwoInt {
                num2 = unwrappedNumTwo
            }
            
            var totalCalculation = ""

            switch key {
            case Operators.plus:
                totalCalculation = "\(Double(round(1000*(num1 + num2))/1000))"
            case Operators.minus:
                totalCalculation = "\(Double(round(1000*(num1 - num2))/1000))"
            case Operators.multiply:
                totalCalculation = "\(Double(round(1000*(num1 * num2))/1000))"
            case Operators.divide:
                totalCalculation = "\(Double(round(1000*(num1 / num2))/1000))"
            }


            //        let calculatedHistory = CalculationHistory(id : history.count + 1,value : labelresult.text ?? "")
            //        history.append(calculatedHistory)
            
//            let calculatedHistory = CalculationHistory(value: totalCalculation)
            DatabaseManager().addNewHistory(data: totalCalculation)
            
            return totalCalculation
        } else {
            return queryToCalculate
        }

        

    }
    
    
}
