//
//  CalculationHistoryItemView.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct CalculationHistoryItemView: View {
    let item : CalculationHistory
    let onClickDelete : ((CalculationHistory) -> Void)
    
    init(item : CalculationHistory, onClickDelete action : @escaping ((CalculationHistory) -> Void)) {
        self.item = item
        self.onClickDelete = action
    }
    
    
    var body: some View {
        HStack{
            Text("Total Result : \(item.value)")
            Spacer()
            Button(action: {
            }) {
                Text("X")
                    .italic()
                    .foregroundColor(Color.red)
                    .onTapGesture {
                        self.onClickDelete(self.item)
                }
            }.padding()
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
        
    }
}

struct CalculationHistoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationHistoryItemView(item: CalculationHistory(value: "10"),onClickDelete: { data in
            
        })
    }
}
