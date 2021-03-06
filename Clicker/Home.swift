//
//  Home.swift
//  Clicker
//
//  Created by Chaitanya Ravuri on 2/20/17.
//  Copyright © 2017 Chaitu Ravuri. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(score)
        scheduledTimerWithTimeInterval()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function **Countdown** with the interval of 1 seconds
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Home.updateScore), userInfo: nil, repeats: true)
    }
    
    func updateScore(){
        let time = NSDate().timeIntervalSince1970
        for i in 0 ..< time1.count {
            score = score + cps1*(time - time1[i])
            time1[i] = time
        }
        for i in 0 ..< time2.count {
            score = score + cps2*(time - time2[i])
            time2[i] = time
        }
        for i in 0 ..< time3.count {
            score = score + cps3*(time - time3[i])
            time3[i] = time
        }
        for i in 0 ..< time4.count {
            score = score + cps4*(time - time4[i])
            time4[i] = time
        }
        for i in 0 ..< time5.count {
            score = score + cps5*(time - time5[i])
            time5[i] = time
        }
        showScore()
    }
    
    func showScore(){
        label.text = String(Int(score))
    }

    @IBAction func click(_ sender: Any) {
        score = score + 1
        showScore()
    }

    @IBOutlet var label: UILabel!
}

