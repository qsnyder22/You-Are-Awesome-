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
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
    
        messageLabel.text = "You are Awesome!"
        imageView.image = UIImage(named: "image0")
    }
    
}

