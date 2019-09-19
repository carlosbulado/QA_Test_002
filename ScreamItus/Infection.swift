//
//  Infection.swift
//  ScreamItus-IOS
//
//  Created by parrot on 2019-09-19.
//  Copyright © 2019 room1. All rights reserved.
//

import Foundation
class Infection
{
    func calculateTotalInfected(day : Int) -> Int
    {
        if(day <= 0) { return -1 }
        return day * 5;
    }
}
