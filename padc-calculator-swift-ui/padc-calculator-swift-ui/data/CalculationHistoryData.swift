//
//  CalculationHistoryData.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/12/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import Foundation
import SwiftUI

struct CalculationHistory : Hashable, Identifiable {
    var id : String = UUID().uuidString
    var value : String
    var createdDate : Date = Date()
}


