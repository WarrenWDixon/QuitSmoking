//
//  ReadMeViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 1/28/18.
//  Copyright © 2018 Warren Dixon. All rights reserved.
//

import UIKit

class ReadMeViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        if width < 350 {
            myLabel.font = UIFont.systemFont(ofSize: 12)
        }
        else if width < 400 {
           myLabel.font = UIFont.systemFont(ofSize: 16)
        }
        else if width < 420 {
            myLabel.font = UIFont.systemFont(ofSize: 18)
        }
        else if width < 800 {
            myLabel.font = UIFont.systemFont(ofSize: 28)
        }
        else if width < 850 {
            myLabel.font = UIFont.systemFont(ofSize: 32)
        }
        else  {
            myLabel.font = UIFont.systemFont(ofSize: 50)
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
