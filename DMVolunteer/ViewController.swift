//
//  ViewController.swift
//  DMVolunteer
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "dc_street_exlopre.png")!)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func sendMail() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["DMVolunteer@mail.com"])
        mailComposerVC.setSubject("")
        mailComposerVC.setMessageBody("How are you doing", isHTML: false)
        
        return mailComposerVC

        }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "Your device could not send mail", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "OK", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
    }
    
    
   
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    @IBAction func sendEmailChildren(_ sender: UIButton) {
        let childrenMailComposeViewController = sendMail()
        if MFMailComposeViewController.canSendMail(){
            self.present(childrenMailComposeViewController, animated: true, completion: nil)
        }else{
            showMailError()
        }
    }
    
    @IBAction func sendEmailEnvironment(_ sender: UIButton) {
        let mailComposeViewController = sendMail()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
            
        }else{
            showMailError()
        }
    }
//    @IBAction func sendEmailChildren(_ sender: Any) {
//
//    sendMail()
//
//    }
//
}
// working on email and point system
