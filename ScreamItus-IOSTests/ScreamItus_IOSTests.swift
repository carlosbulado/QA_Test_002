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

    func testNumberOfDaysGreaterThan0() {
        var infecLessThan0 = infection.calculateTotalInfected(day: -1);
        var infec0 = infection.calculateTotalInfected(day: 0);
        
        XCTAssertEqual(-1, infecLessThan0);
        XCTAssertEqual(-1, infec0);
    }

}
