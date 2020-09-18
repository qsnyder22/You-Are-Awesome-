//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Quinn Snyder on 9/13/20.
//  Copyright © 2020 Quinn Snyder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run! ")
        messageLabel.text = "Fabulous? That's You!"
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 the message button was pressed!")
        messageLabel.text = "You are Awesome!"
    }
    
}

