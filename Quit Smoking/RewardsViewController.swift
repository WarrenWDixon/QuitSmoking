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
        label2.text = " "
        label3.text = " "
        label4.text = " "
        label5.text = " "
        label6.text = " "
        label7.text = " "
        label8.text = " "
        if (view.layer.bounds.width >= 768) {
            label1.font = label1.font.withSize(24)
            label2.font = label2.font.withSize(24)
            label3.font = label3.font.withSize(24)
            label4.font = label4.font.withSize(24)
            label5.font = label5.font.withSize(24)
            label6.font = label6.font.withSize(24)
            label7.font = label7.font.withSize(24)
            label8.font = label8.font.withSize(24)
            label1.sizeThatFits(CGSize(width: 600.0, height: 100))
            label2.sizeThatFits(CGSize(width: 600.0, height: 100))
            label3.sizeThatFits(CGSize(width: 600.0, height: 100))
            label4.sizeThatFits(CGSize(width: 600.0, height: 100))
            label5.sizeThatFits(CGSize(width: 600.0, height: 100))
            label6.sizeThatFits(CGSize(width: 600.0, height: 100))
            label7.sizeThatFits(CGSize(width: 600.0, height: 100))
            label8.sizeThatFits(CGSize(width: 600.0, height: 100))
        }
        
        super.viewDidLoad()
        var state:Bool
        print ("read tapped")
        state = defaults.bool(forKey:"dateSet")
        label1.isHidden = false
        label1.text = "height: \(view.layer.bounds.height)  width:\(view.layer.bounds.width) "
        print("state is \(state)")
        if state {
            print("state is true")
            let quitDate = defaults.object(forKey: "myDate") as? NSDate ?? NSDate()
            print("quitDate is \(quitDate)" )
            
            var myDateInterval = DateInterval();
            let currentDate = Date();
            if currentDate < quitDate as Date {
                //label1.text = ("Your quit date is in the future, no rewards yet!")
                label1.text = "height: \(view.layer.bounds.height)  width:\(view.layer.bounds.width) "
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
                    //label1.text = "Congratulations you've saved at least $\(amountSaved)!"

                    
                    label2.text = "After 20 minutes your blood pressure and pulse rate returned to normal!"

                    
                    label3.text = "After 24 hours your chance of a heart attack decreased!"

                    
                    if (numDays > 2) {
                        label4.text = "After two days your nerve endings started to renew, and your smell and taste improved!"
                        label4.isHidden = false;
                        if (numDays > 14) {
                            label5.text = "After two weeks your circulation and lung function improved!"
                            label5.isHidden = false;
                            if (numDays > 30) {
                                label6.text = "After a month coughing, sinus congestion, fatigue, and shortness of breath decreased!"

                            }
                            
                            if (numDays > 365) {
                                label7.text = "Congratulations after one year your risk of coronary heart disease is half of that of a smoker"
 
                            }
                        }
                    }
                }
            }
        }
        else {
            //label1.text = "Please set your quit date, thanks!"
            label1.text = "height: \(view.layer.bounds.height)  width:\(view.layer.bounds.width) "
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
