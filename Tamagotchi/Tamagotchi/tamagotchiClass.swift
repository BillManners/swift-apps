//
//  tamagotchiClass.swift
//  Tamagotchi
//
//  Created by Manners, William (Coll) on 21/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation

class Tamagotchi {
    var age: Int = 0
    var weight: Int = 5
    var satisfaction: Int = 3
    var awake: Bool = false
    var alive: Bool = true
    var droppings: Bool = false
    var hungry: Bool = false
    var tired: Bool = false
//    func playGame (satisfaction : Int, tired : Bool, hungry : Bool) -> (Int){
//        if tired == false && hungry == false{
//            self.satisfaction += 1
//        }
//        else{
//            print(self.satisfaction)
//            self.satisfaction = self.satisfaction - 2
//        }
//
//        if Int.random(in: 1..<10) > 5{
//            self.hungry = true
//            print ("Your tamagotchi is hungry after a fun game")
//        }
//        if Int.random(in: 1..<10) > 5{
//            self.tired = true
//            print ("Your tamagotchi is tired after a fun game")
//        }
//        if self.satisfaction < 0{
//            let alive = false
//        }
//        return (self.satisfaction)
//    }
}
