//
//  CalculationHistoryView.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct CalculationHistoryView: View {
    
    @EnvironmentObject var repo : Repository
    
    var body: some View {
        List(repo.history) { data in
            CalculationHistoryItemView(item: data) { (targetData) in
                self.repo.removeHistory(data: targetData)
            }
        }
        
    }
}

struct CalculationHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationHistoryView()
            .environmentObject(Repository.shared)
    }
}
