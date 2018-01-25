//
//  MailViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 12/31/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

//
//  ViewController.swift
//  emailDemo
//
//  Created by Warren Dixon on 12/31/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit
import MessageUI
class MailViewController: UIViewController,MFMailComposeViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        }
        else {
            showMailError();
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureMailController() ->MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["winfielddixon3@gmail.com"])
        mailComposerVC.setSubject("Feedback On Quit Smoking App")
        mailComposerVC.setMessageBody("How are you doing?", isHTML: false)
        return mailComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not set email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "OK", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}



