//
//  Tamagotchi_tests.swift
//  Tamagotchi_tests
//
//  Created by Manners, William (Coll) on 21/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import XCTest

class Tamagotchi_tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInitInsertsDefaultValues() {
        //arrange
        var Tamagotchi = tamagotchi()
        //act
        let test = Tamagotchi.age
        let test2 = Tamagotchi.weight
        //assert
        XCTAssertEqual(test, 0)
        XCTAssertEqual(test2, 5)
    }
    s
    

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
