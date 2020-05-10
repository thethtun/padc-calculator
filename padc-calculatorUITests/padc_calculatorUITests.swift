//
//  padc_calculatorUITests.swift
//  padc-calculatorUITests
//
//  Created by Thet Htun on 5/9/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import XCTest

class padc_calculatorUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_click_navBarItem_show_calculationHistory() {
        app.launch()
  
        print(app.isShowingCalculationHistoryScreen)
        
        app.navigationBars["PADC Calculator"].buttons["navBarItemCalculationHistory"].tap()
        XCTAssertTrue(app.isShowingCalculationHistoryScreen)
        
        app.navigationBars["Calculation History"].buttons.element(boundBy: 0).tap()
        XCTAssertFalse(app.isShowingCalculationHistoryScreen)
    }
    
    func test_calculation_sum_1_2() {
        app.launch()
        
        app.buttons["1"].tap()
        app.buttons["+"].tap()
        app.buttons["1"].tap()
        app.buttons["="].tap()
                
        let result = app.staticTexts["labelResult"].label
        XCTAssert(result == "2")
    }


    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension XCUIApplication {
    var isShowingCalculationHistoryScreen : Bool {
        return otherElements["CalculationHistoryViewController"].exists
    }
}
