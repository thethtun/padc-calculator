//
//  padc_calculatorTests.swift
//  padc-calculatorTests
//
//  Created by Thet Htun on 5/9/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import XCTest

class padc_calculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let userLoginExpectation = expectation(description: "User Login")
        userLoginExpectation.fulfill()
        XCTFail("You Sucks!")
        waitForExpectations(timeout: 5, handler: nil)
    }

    func testPerformanceExample() {
        
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
