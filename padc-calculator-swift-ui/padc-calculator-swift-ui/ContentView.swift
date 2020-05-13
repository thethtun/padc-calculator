//
//  ContentView.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/7/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView {
            ZStack {
                CalculatorView()
            }
            .navigationBarTitle("PADC Calculator", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(
                destination: CalculationHistoryView(),
                label: {
                    Image("icons8-clock_8-1")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
