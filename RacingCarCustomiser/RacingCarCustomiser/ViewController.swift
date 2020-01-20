//
//  ViewController.swift
//  RacingCarCustomiser
//
//  Created by Manners, William (Coll) on 13/01/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var engineAndExhaust: UISwitch!
    @IBOutlet var tires: UISwitch!
    @IBOutlet var carStatistics: UILabel!
    @IBOutlet var timerDisplay: UILabel!
    @IBOutlet var raceGears: UISwitch!
    @IBOutlet var dragPackage: UISwitch!
    @IBOutlet var money: UILabel!
    var starterCars = StarterCars()
    var currentcarIndex = 0
    var timeRemaining = 30
    var bankAccount = 1000{
        didSet{
            money.text = "Bank account: £\(bankAccount)"
        }}
    var car: Car? {
        didSet {
            carStatistics.text = car?.displayStats()
    }
    }
    
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        car = starterCars.cars[0]
            money.text = "Bank account: £\(bankAccount)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
    }
    
    func transaction(cost:Int)->Bool{
        if bankAccount >= cost{
            bankAccount -= cost
            return true
        } else{
            return false
        }
        
    }
    
    @IBAction func nextCar(_ sender: Any) {
        if timeRemaining >= 1{
            currentcarIndex += 1
            if currentcarIndex >= starterCars.cars.count {
                currentcarIndex = 0
            }
            car = starterCars.cars[currentcarIndex]
            tires.isOn = false
            engineAndExhaust.isOn = false
            raceGears.isOn = false
            dragPackage.isOn = false
            bankAccount = 1000
        }
        
    }
    
    @IBAction func engineAndExhaustToggle(_ sender: Any) {
        if engineAndExhaust.isOn{
            if transaction(cost: 500){
                car?.norttosixty -= 0.5
            }
            else{
                engineAndExhaust.isOn = false
            }
        }
        else{
            car?.norttosixty += 0.5
            bankAccount += 500
        }

    }
    
    @IBAction func tiresToggle(_ sender: Any) {
        if tires.isOn{
            if transaction(cost: 600){
                car?.handling += 1
            }
            else{
                tires.isOn = false
            }
        }
        else{
            car?.handling -= 1
            bankAccount += 600
        }
    }
    
    @IBAction func raceGearsToggle(_ sender: Any) {
        if raceGears.isOn{
            if transaction(cost: 300){
                car?.norttosixty += 0.5
                car?.topSpeed += 40
            }
            else{
                raceGears.isOn = false
            }
        }
        else{
            car?.norttosixty -= 0.5
            car?.topSpeed -= 40
            bankAccount += 300
        }
    }
    
    @IBAction func dragPackageToggle(_ sender: Any) {
        if dragPackage.isOn{
            if transaction(cost: 500){
                car?.topSpeed += 40
            }
            else{
                dragPackage.isOn = false
            }
        }
        else{
            car?.topSpeed -= 40
            bankAccount += 500
        }
    }
    
    @objc func countdown() {
        if timeRemaining >= 1{
            timeRemaining -= 1
            timerDisplay.text = "Time remaining: \(timeRemaining) seconds"
        } else {
            timer?.invalidate()
            engineAndExhaust.isEnabled = false
            tires.isEnabled = false
            raceGears.isEnabled = false
            dragPackage.isEnabled = false
        }
    }

}

