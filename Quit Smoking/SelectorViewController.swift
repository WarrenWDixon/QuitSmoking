//
//  SelectorViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/24/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit

class SelectorViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    

    @IBOutlet weak var quitDateSelector: UIDatePicker!
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var packSelector: UIPickerView!
    @IBOutlet weak var packsButton: UIButton!
    
    var packsArray = ["couple cigarettes", "half a pack", "one pack", "one and a half packs", "two packs", "two and a half packs", "three packs", "three and a half packs", "four packs", "four and a half packs", "five packs", "five and a half packs", "six packs" ]
    
    var packsSmoked = 0.2
    var selectIndex = 0;
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        packSelector.delegate   = self
        packSelector.dataSource = self
        
        quitButton.layer.borderWidth = 2.0
        quitButton.layer.borderColor = UIColor.black.cgColor
        quitButton.layer.cornerRadius = 5.0
        if (view.layer.bounds.width == 320) {
            //print("doing SE logic")
            quitButton.titleLabel!.font = quitButton.titleLabel!.font.withSize(20)
            quitDateSelector.sizeThatFits(CGSize(width : 280, height:100))
            packSelector.sizeThatFits(CGSize(width : 280, height:100))
            
        }
        
        packsButton.layer.borderWidth = 2.0
        packsButton.layer.borderColor = UIColor.black.cgColor
        packsButton.layer.cornerRadius = 5.0
        
        if (view.layer.bounds.width == 320) {
            packsButton.titleLabel!.font = packsButton.titleLabel!.font.withSize(20)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return packsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("in titleForRow title is \(packsArray[row]) ")
        return packsArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectIndex = row
        if row == 0 {
            packsSmoked = 0.2
        }
        else {
            packsSmoked = 0.5 * Double(row);
        }
        //print("packs smoked is \(packsSmoked) ");
    }

    @IBAction func dateSelected(_ sender: Any) {
    }
    
    @IBAction func dateTapped(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/YYYY T hh:mm:ss"
        
        var myDateInterval = DateInterval();
        let quitDate = quitDateSelector.date;
        let dateSet = true
        defaults.set(quitDate, forKey:"myDate")
        defaults.set(dateSet, forKey:"dateSet")
        let currentDate = Date();
        if currentDate < quitDate {
            //print("quit date is in future")
        }
        else {
            myDateInterval.start = quitDate;
            myDateInterval.end   = currentDate;
            //print("date interval is \(myDateInterval.duration) ")
        }
        
        
    }
    
    @IBAction func packsTapped(_ sender: Any) {
        //print ("btn tapped the number of packs is \(packsSmoked) ")
    }
   
    
}


