//
//  ViewController.swift
//  postcard-07162015
//
//  Created by Zhang on 7/16/15.
//  Copyright (c) 2015 Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextLabel: UITextField!
    
    @IBOutlet weak var enterMessageTextLabel: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageTextLabel.text
        enterMessageTextLabel.text=""
        enterMessageTextLabel.resignFirstResponder()
        
        mailButton.setTitle("mail sent", forState: UIControlState.Normal)
        
    }

}

