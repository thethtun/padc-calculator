//
//  CalculatorView.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//
import SwiftUI

enum Operators : String {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
}

//create view
struct CalculatorView: View {
    @State var result: String = "0"
    
    var body : some View {
        GeometryReader { (geometry) in
            VStack {
                ZStack {
                    Text(self.result)
                        .font(Font.custom("Helvetica", size: 70))
                        .fontWeight(.light)
                        .accentColor(Color.gray)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .padding(.trailing, 10)
                        .padding(.leading, 10)
                        .frame(width: geometry.size.width, alignment: .trailing)
                    
                }.frame(width: geometry.size.width, height : geometry.size.height/3)
                
                
                HStack(spacing: 0) {
                    ButtonCalculationSymbol(value: "+", existingResult: self.$result)
                    ButtonCalculationSymbol(value: "-", existingResult: self.$result)
                    ButtonCalculationSymbol(value: "*", existingResult: self.$result)
                    ButtonCalculationSymbol(value: "/", existingResult: self.$result)
                }.frame(height: 50)
                
                
                VStack(spacing: 2) {
                    HStack(spacing: 2) {
                        ButtonNumberPadItem(value: "1", existingResult: self.$result)
                        ButtonNumberPadItem(value: "2", existingResult: self.$result)
                        ButtonNumberPadItem(value: "3", existingResult: self.$result)
                    }
                    
                    HStack(spacing: 2) {
                        ButtonNumberPadItem(value: "4", existingResult: self.$result)
                        ButtonNumberPadItem(value: "5", existingResult: self.$result)
                        ButtonNumberPadItem(value: "6", existingResult: self.$result)
                    }
                    
                    HStack(spacing: 2) {
                        ButtonNumberPadItem(value: "7", existingResult: self.$result)
                        ButtonNumberPadItem(value: "8", existingResult: self.$result)
                        ButtonNumberPadItem(value: "9", existingResult: self.$result)
                    }
                    
                    HStack(spacing: 2) {
                        ButtonNumberPadItem_Clear(existingResult: self.$result)
                        ButtonNumberPadItem(value: "0", existingResult: self.$result)
                        ButtonNumberPadItem_Calculate(existingResult: self.$result)
                    }.frame(height: 170)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            
            
        }
        
    }
}



//create preview
struct CalculatorView_Previews : PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
