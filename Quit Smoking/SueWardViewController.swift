//
//  SueWardViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/25/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit
import WebKit

class SueWardViewController: UIViewController, UIWebViewDelegate {

    var webView: WKWebView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in SueWardViewController")
        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0,y:0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/2))
        self.view.addSubview(myWebView)
        myWebView.delegate = self
        myWebView.loadHTMLString("<iframe width=\"\(myWebView.frame.width)\" height=\"\(myWebView.frame.height)\" src=\"https://www.youtube.com/embed/9k8XnBWXgj4?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
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
