//
//  absence.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 09/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation

class Absence {
    var takenOn: Date
    var present: [Student] = []
    var absent: [Student] = []
    var selectedRows: [IndexPath]?
    
    init(date: Date) {
        takenOn = Date()
    }
}

