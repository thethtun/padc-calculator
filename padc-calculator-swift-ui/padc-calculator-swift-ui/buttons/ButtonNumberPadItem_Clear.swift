//
//  ButtonNumberPadItem_Clear.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct ButtonNumberPadItem_Clear: View {
    @Binding var existingResult : String
    var body : some View {
        ZStack {
            Rectangle().fill(Color.clear)
            Button(action: {
                self.onTapAction()
            }) {
                Text("C")
                    .font(Font.custom("Helvetica", size: 36) )
                    .fontWeight(.semibold)
            }
            .accentColor(.white)
        }.background(Color(#colorLiteral(red: 1, green: 0.1490196078, blue: 0, alpha: 1)))
            .onTapGesture {
                self.onTapAction()
        }
    }
    
    private func onTapAction() {
        self.existingResult = "0"
    }
}

