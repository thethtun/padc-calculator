//
//  Repository.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Repository : ObservableObject {
    
    @Published var history = [CalculationHistory]() {
        willSet {
            willChange.send(self)
        }
    }
    
    let willChange = PassthroughSubject<Repository, Never>()
    
    static var shared = Repository()
    
    private init() {}
    
    func addNewHistory(data : CalculationHistory) {
        history.append(data)
    }
  
    func removeHistory(data : CalculationHistory) {
        history.removeAll { (source) -> Bool in
            source.id == data.id
        }
    }
}
