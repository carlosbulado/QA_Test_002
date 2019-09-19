//
//  ScreamItusUITests.swift
//  ScreamItusUITests
//
//  Created by Carlos José Bulado on 2019-09-19.
//  Copyright © 2019 room1. All rights reserved.
//

import XCTest

class ScreamItusUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        app.otherElements.containing(.staticText, identifier:"Infection Calculator").children(matching: .textField).element.tap()
        
        let calculateButton = app.buttons["Calculate"]
        calculateButton.tap()
        calculateButton.tap()
        app.staticTexts["5 instructors infected"].tap()
                // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAppLoads()
    {
        let app = XCUIApplication()
        let textBox = app.otherElements.containing(.staticText, identifier:"Infection Calculator").children(matching: .textField).element
        let button = app.buttons["Calculate"]
        let resultLabel = app.staticTexts["1000 instructors infected"]
        
        XCTAssertNotNil(textBox)
        XCTAssertNotNil(button)
        XCTAssertNil(resultLabel)
    }

}
