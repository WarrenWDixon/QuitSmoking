//
//  RewardsViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/26/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController {
    
   
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        label7.isHidden = true
        label8.isHidden = true
        
        super.viewDidLoad()
        var state:Bool
        print ("read tapped")
        state = defaults.bool(forKey:"dateSet")
        print("state is \(state)")
        if state {
            print("state is true")
            let quitDate = defaults.object(forKey: "myDate") as? NSDate ?? NSDate()
            print("quitDate is \(quitDate)" )
            
            var myDateInterval = DateInterval();
            let currentDate = Date();
            if currentDate < quitDate as Date {
                label1.text = ("Your quit date is in the future, no rewards yet!")
                label1.isHidden = false
            }
            else {
                myDateInterval.start = quitDate as Date;
                myDateInterval.end   = currentDate;
                print("date interval is \(myDateInterval.duration) ")
                let numSeconds = Int(myDateInterval.duration)
                let numDays = numSeconds / (60 * 60 * 24)
                print("numSeconds is \(numSeconds)" )
                print("numDays is \(numDays) ")
                if (numDays > 1)
                {
                    let amountSaved = 6.0 * Double(numDays)
                    label1.text = "Congratulations you've saved at least $\(amountSaved)!"
                    label1.isHidden = false;
                    
                    label2.text = "After 20 minutes your blood pressure and pulse rate returned to normal!"
                    label2.isHidden = false
                    
                    label3.text = "After 24 hours your chance of a heart attack decreased!"
                    label3.isHidden = false
                    
                    if (numDays > 2) {
                        label4.text = "After two days your nerve endings started to renew, and your smell and taste improved!"
                        label4.isHidden = false;
                        
                        if (numDays > 14) {
                            label5.text = "After two weeks your circulation and lung function improved!"
                            label5.isHidden = false;
                            if (numDays > 30) {
                                label6.text = "After a month coughing, sinus congestion, fatigue, and shortness of breath decreased!"
                                label6.isHidden = false;
                            }
                            
                            if (numDays > 365) {
                                label7.text = "Congratulations after one year your risk of coronary heart disease is half of that of a smoker"
                                label7.isHidden = false;
                            }
                        }
                    }
                }
            }
        }
        else {
            label1.text = "Please set your quit date, thanks!"
            label1.isHidden = false
        }
        //}
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
