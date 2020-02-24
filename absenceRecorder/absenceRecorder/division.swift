//
//  division.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 30/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation

//Tom Clancy's the

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    init (code:String) {
        self.code = code
        
    }
    
    func getAbsence(forDate: Date)-> Absence?{
        for i in self.absences{
            if Calendar.current.isDate(forDate, inSameDayAs: i.takenOn){
                let newAbsence = i
                return newAbsence
            }
            
        }
        return nil
    }
    func append (student:Student) {
        students.append(student)
        
    }
}
