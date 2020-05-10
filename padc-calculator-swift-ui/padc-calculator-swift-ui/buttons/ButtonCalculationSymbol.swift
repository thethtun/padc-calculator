//
//  ButtonCalculationSymbol.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct ButtonCalculationSymbol: View {
    var value : String = "+"
    @Binding var existingResult : String
    
    var body : some View {
        ZStack {
            Rectangle().fill(Color.clear)
            Button(action: {
                self.onTapAction()
            }) {
                Text(value)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            }
            .accentColor(.black)
        }.background(Color.clear)
            .onTapGesture {
                self.onTapAction()
        }
    }
    
    private func onTapAction() {
        self.existingResult = "\(self.existingResult)\(self.value)"
        
        //Calculation
        existingResult = ButtonNumberPadItem_Calculate.defineResult(query: existingResult)
        
        
        
    }
}

