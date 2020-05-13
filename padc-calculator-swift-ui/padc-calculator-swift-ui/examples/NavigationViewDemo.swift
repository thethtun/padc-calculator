//
//  NavigationViewDemo.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView {
            VStack(alignment : .leading) {
                HStack {
                    NavigationLink(destination: CalculatorView()) {
                        Text("Click For News").padding()
                        Spacer()
                    }
                }
                Spacer()
            }.navigationBarTitle(Text("Daily News"))
            
        }
    }
}

struct NavigationViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}
