//
//  SettingsViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 1/1/18.
//  Copyright © 2018 Warren Dixon. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var myStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print ("width is \(width) ")
        if self.view.frame.size.width < 350 {
            //print ("changing stack veiw spacing")
          myStackView.spacing = 0
        }
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
