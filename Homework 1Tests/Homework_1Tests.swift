//
//  Homework_1Tests.swift
//  Homework 1Tests
//
//  Created by Matthew Malaker on 1/24/22.
//

import XCTest
@testable import Homework_1

class Homework_1Tests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }


    func sphereSurfaceAreaTest() async{
        let radius = 1.0
        let testSphere = Sphere()
        var surfaceArea = 0.0
        surfaceArea = await testSphere.sphereSurfaceArea(radius: radius)
        XCTAssertEqual(surfaceArea, (4.0/3.0)*Double.pi*pow(radius,3), accuracy: 1.0E-7, "Was not equal to this resolution.")
        
    }
    
    func sphereVolumeTest() async{
        let radius = 1.0
        let testSphere = Sphere()
        var volume = 0.0
        volume = await testSphere.sphereVolume(radius: radius)
        XCTAssertEqual(volume, (4.0)*Double.pi*pow(radius,2), accuracy: 1.0E-7, "Was not equal to this resolution.")
        
    }
    
    func boundingBoxSurfaceAreaTest() async{
        let side = 1.0
        let testBox = Bounding_Box()
        var surfaceArea = 0.0
        surfaceArea = await testBox.cuboidSurfaceArea(numberOfSides: 3, sideOneDimension: side, sideTwoDimension: side, sideThreeDimension: side)
        XCTAssertEqual(surfaceArea, (6)*pow(side,2), accuracy: 1.0E-7, "Was not equal to this resolution.")
        
        var perimeter = 0.0
        perimeter = await testBox.cuboidSurfaceArea(numberOfSides: 2, sideOneDimension: side, sideTwoDimension: side, sideThreeDimension: side)
        XCTAssertEqual(perimeter, (4*side), accuracy: 1.0E-7, "Was not equal to this resolution.")
        
        
    }
    
    func boundingBoxVolumeTest() async{
        let side = 1.0
        let testBox = Bounding_Box()
        var volume = 0.0
        volume = await testBox.cuboidVolume(numberOfSides: 3, sideOneDimension: side, sideTwoDimension: side, sideThreeDimension: side)
        XCTAssertEqual(volume, Double.pi*pow(side,3), accuracy: 1.0E-7, "Was not equal to this resolution.")
        var area = 0.0
        area = await testBox.cuboidVolume(numberOfSides: 2, sideOneDimension: side, sideTwoDimension: side, sideThreeDimension: side)
        XCTAssertEqual(area, Double.pi*pow(side,2), accuracy: 1.0E-7, "Was not equal to this resolution.")
        
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
