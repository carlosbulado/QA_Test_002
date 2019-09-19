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
        var infected = 0;
        if(day <= 0) { infected = -1 }
        else if(day <= 7)
        {
            for index in 1...day
            {
                if(index % 2 == 1) { infected += 5 }
            }
        }
        else
        {
            infected += 20;
            for index in 8...day
            {
                if(index % 2 == 1) { infected += 8 }
            }
        }
        return infected;
    }
}
