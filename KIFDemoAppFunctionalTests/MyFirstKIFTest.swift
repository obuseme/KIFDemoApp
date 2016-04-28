//
//  MyFirstKIFTest.swift
//  KIFDemoApp
//
//  Created by Andy Obusek on 4/27/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import XCTest

class MyFirstKIFTest: KIFTestCase {

    func testContinueWithoutSaving_ShowsNextScreen_WithCorrectText() {
        tester().tapViewWithAccessibilityLabel("Continue, without saving")
        tester().waitForViewWithAccessibilityLabel("Welcome Player 1")
        tester().tapViewWithAccessibilityLabel("Start Over")
    }

    func testSaveAndContinueWithAName_ShowsNameOnNextScreen_WithMatchingText() {
        let name = "Clean Swifter"
        tester().enterText(name, intoViewWithAccessibilityLabel: "Name field")
        tester().tapViewWithAccessibilityLabel("Save, and continue")
        tester().waitForViewWithAccessibilityLabel("Welcome \(name)")
    }
}
