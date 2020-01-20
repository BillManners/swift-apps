//
//  RacingCarCustomiserTests.swift
//  RacingCarCustomiserTests
//
//  Created by Manners, William (Coll) on 13/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import XCTest
@testable import RacingCarCustomiser

class RacingCarCustomiserTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func carString() {
        //arrange
        let car = Car(make: "Tesla", model: "Model S", topSpeed: 130, norttosixty: 4.5, handling: 3)
        let expected = """
        Make: Tesla
        Model: Model S
        Top speed: 130
        0-60: 4.5
        Handling (1-10): 3
        """
        //act
        let actual = car.displayStats()
        //assert
        XCTAssertEqual(actual, expected)
    }
//
//    //func testPerformanceExample() {
//        // This is an example of a performance test case.
//        //self.measure {
//            // Put the code you want to measure the time of here.
//        //}
//    //}
//
//}
}
