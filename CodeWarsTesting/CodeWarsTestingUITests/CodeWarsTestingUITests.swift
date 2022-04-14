
//
//  CodeWarsTestingUITests.swift
//  CodeWarsTestingUITests
//
//  Created by Максим Неверовский on 08.04.2022.
//

import XCTest

class CodeWarsTestingUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testButtonGo() {
        let element = XCUIApplication().children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let textField = element.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.typeText("1 2 3")
        element.children(matching: .textField).element(boundBy: 1).tap()
        
        let textField2 = element.children(matching: .textField).element(boundBy: 0)
        textField2.tap()
        textField2.typeText("1")
        element.children(matching: .textField).element(boundBy: 1).tap()
          
        app/*@START_MENU_TOKEN@*/.staticTexts["GO!"]/*[[".buttons[\"GO!\"].staticTexts[\"GO!\"]",".staticTexts[\"GO!\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["[4, 2]]"].exists)
        
    }
}
