//
//  Data.swift
//  padc-calculator
//
//  Created by Thet Htun on 5/10/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import Foundation

var history = [CalculationHistory]()

struct CalculationHistory {
    var id : Int
    var value : String
    
    init(id : Int, value : String) {
        self.id = id
        self.value = value
    }
}

