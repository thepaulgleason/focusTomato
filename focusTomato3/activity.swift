//
//  MeditationSessionInfo.swift
//  focusTomato3
//
//  Created by Benjamin Bassett  on 2/12/19.
//  Copyright © 2019 com.benbassett. All rights reserved.
//

import Foundation


struct activity {
    var name: String
    var focusRepMinutes: Int
    var shortBreakMinutes: Int
    var numberOfRepsInASet: Int
    var totalSessionTimeForUser: Int
    var repsCompleted: Int


    
    
    init(_ name: String){
        self.name = name
        focusRepMinutes = 25
        shortBreakMinutes = 5
        numberOfRepsInASet = 4
        totalSessionTimeForUser = 0
        repsCompleted =  0
    }
    
    init(_ name: String, focusRepMinutes: Int, shortBreakMinutes: Int, numberOfRepsInASet: Int){
        self.name = name
        self.focusRepMinutes = focusRepMinutes
        self.shortBreakMinutes = shortBreakMinutes
        self.numberOfRepsInASet = numberOfRepsInASet
        totalSessionTimeForUser = 0
        repsCompleted =  0
    }
    
    var setsCompleted : Int {
        return repsCompleted/numberOfRepsInASet
    }
    
}
