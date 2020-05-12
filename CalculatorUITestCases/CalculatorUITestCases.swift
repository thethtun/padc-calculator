//
//  CalculatorUITestCases.swift
//  CalculatorUITestCases
//
//  Created by Thet Htun on 5/10/20.
//  Copyright © 2020 padc-cal. All rights reserved.
//

import XCTest

class CalculatorUITestCases: XCTestCase {

    let app = XCUIApplication()
    
    func testExample() {
        // UI tests must launch the application that they test.
        app.launch()

        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_Calculation_Sum_7_3_Results_10() {
        app.launch()
        
        /**
         button ["7"] click
         button ["+"] click
         button ["3"] click
         button ["="] click
         label ["0"] => label ["10"] //success
         */
        
        //Query UI
        app.buttons["7"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        
        
        let result = app.staticTexts["labelResult"].label
        XCTAssert(result == "10", "result should be 10")
    }
    
    func test_click_navBarItem_show_calculationHistory() {
        /**
         အဲ့ဒီခလုတ်ကို အရင်နှိပ်ရမယ်။ (history details button)
         Show CalcuationHistory True/False
         */
        
        app.launch()
        
        app.navigationBars["PADC Calculator"].buttons["navBarItemCalculationHistory"].tap()
        
        let isViewExist = app.otherElements["CalculationHistoryViewController"].exists
        
        XCTAssertTrue(isViewExist)
    }

}

