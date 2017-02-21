//
//  Variables.swift
//  Clicker
//
//  Created by Chaitanya Ravuri on 2/20/17.
//  Copyright © 2017 Chaitu Ravuri. All rights reserved.
//

import Foundation

let defaults = UserDefaults.standard

var score = 0.0

var time1 = [Double]()
var cost1 = 15.0
var cps1 = 0.1

var time2 = [Double]()
var cost2 = 100.0
var cps2 = 1.0

var time3 = [Double]()
var cost3 = 1100.0
var cps3 = 8.0

var time4 = [Double]()
var cost4 = 12000.0
var cps4 = 47.0

var time5 = [Double]()
var cost5 = 130000.0
var cps5 = 260.0

func initializeVars () {
    if defaults.object(forKey: "score") != nil {
        score = defaults.double(forKey: "score")
        
        time1 = defaults.array(forKey: "time1") as! [Double]
        cost1 = defaults.double(forKey: "cost1")
        cps1 = defaults.double(forKey: "cps1")
        
        time2 = defaults.array(forKey: "time2") as! [Double]
        cost2 = defaults.double(forKey: "cost2")
        cps2 = defaults.double(forKey: "cps2")
        
        time3 = [Double]()
        cost3 = 1100.0
        cps3 = 8.0
        
        time4 = [Double]()
        cost4 = 12000.0
        cps4 = 47.0
        
        time5 = [Double]()
        cost5 = 130000.0
        cps5 = 260.0
    }
}

func setVars () {
    defaults.setValue(score, forKey: "score")
    
    defaults.setValue(time1, forKey: "time1")
    defaults.setValue(cost1, forKey: "cost1")
    defaults.setValue(cps1, forKey: "cps1")
    
    defaults.setValue(time2, forKey: "time2")
    defaults.setValue(cost2, forKey: "cost2")
    defaults.setValue(cps2, forKey: "cps2")
    
    defaults.synchronize()
}
