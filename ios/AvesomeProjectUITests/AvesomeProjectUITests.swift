//
//  AvesomeProjectUITests.swift
//  AvesomeProjectUITests
//
//  Created by Касьяненко Константин on 23.11.2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class AvesomeProjectUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
      XCUIApplication().staticTexts["some"].tap()
    }
  
  func testNumberInput() {
      NativeRunner.runFeature(featureFile: "someFeature", testCase: self)
    }
}
