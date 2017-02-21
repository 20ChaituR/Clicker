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
    
        time3 = defaults.array(forKey: "time3") as! [Double]
        cost3 = defaults.double(forKey: "cost3")
        cps3 = defaults.double(forKey: "cps3")
        
        time4 = defaults.array(forKey: "time4") as! [Double]
        cost4 = defaults.double(forKey: "cost4")
        cps4 = defaults.double(forKey: "cps4")
        
        time5 = defaults.array(forKey: "time5") as! [Double]
        cost5 = defaults.double(forKey: "cost5")
        cps5 = defaults.double(forKey: "cps5")
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
    
    defaults.setValue(time3, forKey: "time3")
    defaults.setValue(cost3, forKey: "cost3")
    defaults.setValue(cps3, forKey: "cps3")
    
    defaults.setValue(time4, forKey: "time4")
    defaults.setValue(cost4, forKey: "cost4")
    defaults.setValue(cps4, forKey: "cps4")
    
    defaults.setValue(time5, forKey: "time5")
    defaults.setValue(cost5, forKey: "cost5")
    defaults.setValue(cps5, forKey: "cps5")
    
    defaults.synchronize()
}

func toString(num: Double) -> String {
    var x = Int(num)
    var s = ""
    var i = 1
    while (x > 0) {
        s = String(x % 10) + s
        x = x / 10
        if (i % 3 == 0) {
            s = "," + s
        }
        i += 1
    }
    return s
}
