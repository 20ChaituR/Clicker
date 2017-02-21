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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showScore()
        scheduledTimerWithTimeInterval()
        numClick1.text = String(time1.count)
        costClick1.text = String(Int(cost1))
        numClick2.text = String(time2.count)
        costClick2.text = String(Int(cost2))
        // Do any additional setup after loading the view.
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
