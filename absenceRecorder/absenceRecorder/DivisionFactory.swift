//
//  DivisionFactory.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 30/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation

class DivisionFactory {
    static func createDivision(code: String, of size: Int) -> Division {
        var division = Division(code: code)
        
        for i in 1 ..< size {
            let student = Student(forename: "James\(i)", surname: "Surname\(i*2)")
            division.append(student:student)
        }
        
        return division
    }
}
