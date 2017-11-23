//
//  StepDefs.swift
//  AvesomeProjectUITests
//
//  Created by Касьяненко Константин on 23.11.2017.
//  Copyright © 2017 Facebook. All rights reserved.
//
import XCTest
import XCTest_Gherkin

class BasicSteps : StepDefiner {
  override func defineSteps() {
    
    step("start Application") {
      XCUIDevice().orientation = .portrait
      XCUIApplication().launch()
    
    }
    
    step("stop Application") {
      XCUIApplication().terminate()
    }
  }
}
