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
        costClick1.text = String(Int((cost1)*NSDecimalNumber(decimal:pow(1.15, time1.count)).doubleValue))
        numClick2.text = String(time2.count)
        costClick2.text = String(Int((cost2)*NSDecimalNumber(decimal:pow(1.15, time2.count)).doubleValue))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var label: UILabel!

    @IBAction func click1(_ sender: Any) {
        if (Decimal(score) >= Decimal(cost1)*pow(1.15, time1.count)) {
            score = score - cost1
            time1.append(NSDate().timeIntervalSince1970)
            numClick1.text = String(time1.count)
            costClick1.text = String(Int((cost1)*NSDecimalNumber(decimal:pow(1.15, time1.count)).doubleValue))
            showScore()
        }
    }
    
    @IBAction func click2(_ sender: Any) {
        if (Decimal(score) >= Decimal(cost2)*pow(1.15, time2.count)) {
            score = score - cost2
            time2.append(NSDate().timeIntervalSince1970)
            numClick2.text = String(time2.count)
            costClick2.text = String(Int((cost2)*NSDecimalNumber(decimal:pow(1.15, time2.count)).doubleValue))
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
