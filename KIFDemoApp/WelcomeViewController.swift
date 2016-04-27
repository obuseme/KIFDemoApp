//
//  WelcomeViewController.swift
//  KIFDemoApp
//
//  Created by Andy Obusek on 4/26/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    var name:String?
    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            welcomeLabel.text = "Welcome \(name)"
        } else {
            welcomeLabel.text = "Welcome Player 1"
        }
    }
    
    @IBAction func startOverAction(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
