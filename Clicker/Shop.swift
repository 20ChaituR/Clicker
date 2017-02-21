//
//  Shop.swift
//  Clicker
//
//  Created by Chaitanya Ravuri on 2/20/17.
//  Copyright © 2017 Chaitu Ravuri. All rights reserved.
//

import UIKit

class Shop: UIViewController {
    
    @IBOutlet var numClick1: UILabel!
    @IBOutlet var costClick1: UILabel!
    
    @IBOutlet var numClick2: UILabel!
    @IBOutlet var costClick2: UILabel!
    
    @IBOutlet var numClick3: UILabel!
    @IBOutlet var costClick3: UILabel!
    
    @IBOutlet var numClick4: UILabel!
    @IBOutlet var costClick4: UILabel!
    
    @IBOutlet var numClick5: UILabel!
    @IBOutlet var costClick5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showScore()
        scheduledTimerWithTimeInterval()
        showItems()
        // Do any additional setup after loading the view.
    }
    
    func showItems () {
        numClick1.text = String(time1.count)
        costClick1.text = String(Int(cost1))
        
        numClick2.text = String(time2.count)
        costClick2.text = String(Int(cost2))
        
        numClick3.text = String(time3.count)
        costClick3.text = String(Int(cost3))
        
        numClick4.text = String(time4.count)
        costClick4.text = String(Int(cost4))
        
        numClick5.text = String(time5.count)
        costClick5.text = String(Int(cost5))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var label: UILabel!

    @IBAction func click1(_ sender: Any) {
        if (score >= cost1) {
            score = score - cost1
            time1.append(NSDate().timeIntervalSince1970)
            cost1 = cost1*1.15
            numClick1.text = String(time1.count)
            costClick1.text = String(Int(cost1))
            showScore()
        }
    }
    
    @IBAction func click2(_ sender: Any) {
        if (score >= cost2) {
            score = score - cost2
            time2.append(NSDate().timeIntervalSince1970)
            cost2 = cost2*1.15
            numClick2.text = String(time2.count)
            costClick2.text = String(Int(cost2))
            showScore()
        }
    }
    
    @IBAction func click3(_ sender: Any) {
        if (score >= cost3) {
            score = score - cost3
            time3.append(NSDate().timeIntervalSince1970)
            cost3 = cost3*1.15
            numClick3.text = String(time3.count)
            costClick3.text = String(Int(cost3))
            showScore()
        }
    }
    
    @IBAction func click4(_ sender: Any) {
        if (score >= cost4) {
            score = score - cost4
            time4.append(NSDate().timeIntervalSince1970)
            cost4 = cost4*1.15
            numClick4.text = String(time4.count)
            costClick4.text = String(Int(cost4))
            showScore()
        }
    }
    
    @IBAction func click5(_ sender: Any) {
        if (score >= cost5) {
            score = score - cost5
            time5.append(NSDate().timeIntervalSince1970)
            cost5 = cost5*1.15
            numClick5.text = String(time5.count)
            costClick5.text = String(Int(cost5))
            showScore()
        }
    }
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function **Countdown** with the interval of 1 seconds
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Shop.showScore), userInfo: nil, repeats: true)
    }
    
    func showScore(){
        label.text = String(Int(score))
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
