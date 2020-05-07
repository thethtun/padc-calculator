//
//  ButtonNumberPadItem.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct ButtonNumberPadItem: View {
    var value : String = "0"
    @Binding var existingResult : String
    
    var body : some View {
        ZStack {
            Rectangle().fill(Color.clear)
            Button(action: {
                self.onTapAction()
            }) {
                Text(value)
                    .font(Font.custom("Helvetica", size: 36) )
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            }
            .accentColor(.white)
        }.background(Color(#colorLiteral(red: 0, green: 0.5647058824, blue: 0.3176470588, alpha: 1)))
            .onTapGesture {
                self.onTapAction()
        }
    }
    
    private func onTapAction() {
        if self.existingResult == "0" {
            self.existingResult = ""
        }
        self.existingResult = "\(self.existingResult)\(self.value)"
    }
}

