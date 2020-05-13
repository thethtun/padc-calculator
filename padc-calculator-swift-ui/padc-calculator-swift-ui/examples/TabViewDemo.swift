//
//  TabViewDemo.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
            CalculatorView()
                .tabItem {
                    Image(systemName: "0.square.fill")
                    Text("Calculator")
            }
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
            }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
            }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
            }
        }
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
