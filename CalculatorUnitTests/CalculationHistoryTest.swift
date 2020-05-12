//
//  CalculationHistoryTest.swift
//  CalculatorUnitTests
//
//  Created by Thet Htun on 5/10/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculationHistoryTest: XCTestCase {

    func test_initialization_success() {
        let data = CalculationHistory(id: 1, value: "10")
        
        XCTAssert(data.id == 1, "Object attribute ID is 1")
        XCTAssert(data.value == "10", "Object attribute Value is 10")
    }

}
