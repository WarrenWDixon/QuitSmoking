//
//  TestimonyViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/29/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit

class TestimonyViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if view.layer.bounds.width == 320 {
          titleLabel.font = titleLabel.font.withSize(28)
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
