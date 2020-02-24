//
//  ViewController.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 30/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var divisions: [Division] = []
    var currentDate: Date = Date()
    
    @IBAction func nextDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate) ?? Date()
        updateDateDisplay()
        
    }
    @IBAction func previousDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) ?? Date()
        updateDateDisplay()
    }
    fileprivate func updateDateDisplay() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        navigationItem.title = formatter.string(from: currentDate)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadDummyData()
        for division in divisions {
            print("Code: \(division.code), No.: \(division.students.count)")
            for student in division.students {
                print("     \(student.forename) \(student.surname)")
            }
        }
        
        updateDateDisplay()

    }

    
    func loadDummyData(){
        divisions.append(DivisionFactory.createDivision(code: "BY-1", of: 8))
        divisions.append(DivisionFactory.createDivision(code: "BY-2", of: 14))
        divisions.append(DivisionFactory.createDivision(code: "BY-3", of: 10))

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath)
        
        cell.textLabel?.text = divisions[indexPath.row].code
        
        return cell
        
    }
    
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    guard let vc = storyboard?.instantiateViewController(withIdentifier: "DivisionAbsenceViewController") as? DivisionAbsenceViewController else{
//        fatalError("Failed to load Division Absence View controller from storyboard.")
//        }
    
    let selectedDivision = divisions[indexPath.row]
    let newAbsence = Absence(date: currentDate)
    var absence = Absence(date: currentDate)
    if let existingAbsence = selectedDivision.getAbsence(forDate: currentDate) {
        absence = existingAbsence
    } else {
        selectedDivision.absences.append(newAbsence)
    }

    
    

    newAbsence.present.append(contentsOf: selectedDivision.students)
    selectedDivision.absences.append(newAbsence)
    
    guard let vc = storyboard?.instantiateViewController(identifier: "DivisionAbsenceViewController", creator: {
        coder in
        return DivisionAbsenceViewController(coder: coder, division: selectedDivision, absence: absence)
    }) else{
        fatalError("Failed to load Division Absence View controller from storyboard.")
    }
    
    navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}

