//
//  CalculatorUnitTests.swift
//  CalculatorUnitTests
//
//  Created by Thet Htun on 5/10/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import XCTest

class CalculatorUnitTests: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testExample2() {
        
    }
    
    func test_Calculate_OnePlusTwo_Equal_3() {
        let num1 : Int = 1
        let num2 : Int = 2
        let sum = num1 + num2
        
        XCTAssertEqual(sum, 3) //Definitely
    }

}
