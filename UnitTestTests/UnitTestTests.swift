//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by goat_herd on 6/15/19.
//  Copyright © 2019 goat_herd. All rights reserved.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {

    private var testNumber: ComplexNumber!
    private var multiplyNumber: ComplexNumber!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testNumber = ComplexNumber(0, 0)
        
        multiplyNumber = ComplexNumber(0, 0)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Check case 1 : (0,0)*(0,0)
        XCTAssertEqual(result(), ComplexNumber(0, 0))
        // Check case multiply with 1
        testNumber = random()
        multiplyNumber = ComplexNumber (1, 0)
        XCTAssertEqual(result(), testNumber)
        // Check case multiply with 0
        multiplyNumber = ComplexNumber(0, 0)
        XCTAssertEqual(result(), ComplexNumber(0, 0))
        // a*b = b*a
        multiplyNumber = random()
        XCTAssertEqual(result(), multiplyNumber.multiply(with: testNumber))
        // Other case
        testNumber = ComplexNumber(1, 2)
        multiplyNumber = ComplexNumber(3, 1)
        XCTAssertEqual(result(), ComplexNumber(1, 7))
        // Other case
        testNumber = ComplexNumber(-1, -2)
        multiplyNumber = ComplexNumber(4, 5)
        XCTAssertEqual(result(), ComplexNumber(6, -13))
    }
    
    func result() -> ComplexNumber {
        return testNumber.multiply(with: multiplyNumber)
    }
    
    func random() -> ComplexNumber {
        return ComplexNumber(Float.random(in: 0...100), Float.random(in: 0...100))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
