//
//  Car.swift
//  RacingCarCustomiser
//
//  Created by Manners, William (Coll) on 13/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var topSpeed: Int
    var norttosixty: Double
    var handling: Int
    
    func displayStats() -> String{
        return """
        Make: \(make)
        Model: \(model)
        Top speed: \(topSpeed)
        0-60: \(norttosixty)
        Handling (1-10): \(handling)
        """
    }
    
}
