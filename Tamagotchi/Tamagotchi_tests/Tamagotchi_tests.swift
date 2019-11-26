//
//  Tamagotchi_tests.swift
//  Tamagotchi_tests
//
//  Created by Manners, William (Coll) on 21/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import XCTest

//class Tamagotchi_tests: XCTestCase {
//
//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
    
    func testInitInsertsDefaultValues() {
        //arrange
        var tamagotchi = Tamagotchi()
        //act
        let test = tamagotchi.age
        let test2 = tamagotchi.weight
        //assert
        XCTAssertEqual(test, 0)
        XCTAssertEqual(test2, 5)
    }
    
//    func testPlayGameWorksWhenTamagotchiIsTiredAndNotTired () {
//        //arrange
//        var tamagotchi = Tamagotchi()
//        var satisfaction : Int = 3
//        var tired1 : Bool = true
//        var tired2 : Bool = false
//        var hungry : Bool = false
//        //act
//        let answerSatisfaction1 = tamagotchi.playGame(satisfaction : satisfaction, tired : tired1, hungry : hungry)
//        let answerSatisfaction2 = tamagotchi.playGame(satisfaction : satisfaction, tired : tired2, hungry : hungry)
//        //assert
//        XCTAssertEqual(answerSatisfaction1, 1)
//        XCTAssertEqual(answerSatisfaction2, 4)
        
        
//    }
//    
//
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
//}
