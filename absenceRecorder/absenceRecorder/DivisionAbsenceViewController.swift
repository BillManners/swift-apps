//
//  DivisionAbsenceViewController.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 09/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit

class DivisionAbsenceViewController: UITableViewController {
    
    var division: Division
    var absence: Absence
    
    init?(coder: NSCoder, division: Division, absence: Absence) {
        self.division = division
        self.absence = absence
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("How did we get here?")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = division.code
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return division.students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Student", for: indexPath)
        cell.textLabel?.text = division.students[indexPath.row].surname
        cell = 
        print("cock")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedStudent = division.students[indexPath.row]
            absence.absent.append(selectedStudent)
        absence.present.removeAll {
                $0.forename == selectedStudent.forename && $0.surname == selectedStudent.surname
            }

        }
    
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let selectedStudent = division.students[indexPath.row]
            absence.present.append(selectedStudent)
            absence.absent.removeAll {
                $0.forename == selectedStudent.forename && $0.surname == selectedStudent.surname
            }
    }

        
        override func viewDidDisappear(_ animated: Bool) {
            absence.selectedRows = tableView.indexPathsForSelectedRows
}
}
