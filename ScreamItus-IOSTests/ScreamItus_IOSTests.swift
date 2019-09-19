//
//  ScreamItus_IOSTests.swift
//  ScreamItus-IOSTests
//
//  Created by Carlos José Bulado on 2019-09-19.
//  Copyright © 2019 room1. All rights reserved.
//

import XCTest

@testable import ScreamItus

class ScreamItus_IOSTests: XCTestCase
{
    var infection: Infection!

    override func setUp()
    {
        infection = Infection()
    }

    override func tearDown()
    {
        infection = nil
        super.tearDown()
    }

    func testNumberOfDaysGreaterThan0()
    {
        var infecLessThan0 = infection.calculateTotalInfected(day: -1);
        var infec0 = infection.calculateTotalInfected(day: 0);
        
        XCTAssertEqual(-1, infecLessThan0);
        XCTAssertEqual(-1, infec0);
    }
    
    func testInfectionsPerDay()
    {
        var infectedDay1 = infection.calculateTotalInfected(day: 1);
        var infectedDay5 = infection.calculateTotalInfected(day: 5);
        var infectedDay7 = infection.calculateTotalInfected(day: 7);
        
        XCTAssertEqual(5, infectedDay1);
        XCTAssertEqual(25, infectedDay5);
        XCTAssertEqual(35, infectedDay7);
    }
    
    func testInfectionsPerDayAfter7Days()
    {
        var infectedDay8 = infection.calculateTotalInfected(day: 8);
        var infectedDay13 = infection.calculateTotalInfected(day: 13);
        var infectedDay21 = infection.calculateTotalInfected(day: 21);
        
        XCTAssertEqual(43, infectedDay8);
        XCTAssertEqual(83, infectedDay13);
        XCTAssertEqual(147, infectedDay21);
    }
    
    func testIfPriteshMOhammadOrAlbertAreAtTheCollege()
    {
        var infectedDay8 = infection.calculateTotalInfected(day: 8);
        var infectedDay13 = infection.calculateTotalInfected(day: 13);
        var infectedDay16 = infection.calculateTotalInfected(day: 16);
        var infectedDay21 = infection.calculateTotalInfected(day: 21);
        
        XCTAssertEqual(14, infectedDay8);
        XCTAssertEqual(38, infectedDay13);
        XCTAssertEqual(46, infectedDay16);
        XCTAssertEqual(70, infectedDay21);
    }
}
