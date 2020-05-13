//
//  CalculationHistoryView.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct CalculationHistoryView: View {
    
    @FetchRequest(entity: CalculationHistory.entity(), sortDescriptors: [NSSortDescriptor(key: "created_at", ascending: false)]) var calculations : FetchedResults<CalculationHistory>
    
    var body: some View {
        List(calculations, id: \.id) { data in
            CalculationHistoryItemView(item: data) { (targetData) in
                DatabaseManager().removeHistory(id: targetData.id ?? "")
            }
        }
        
    }
}

struct CalculationHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationHistoryView()
    }
}
