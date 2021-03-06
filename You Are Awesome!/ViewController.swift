//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Quinn Snyder on 9/13/20.
//  Copyright © 2020 Quinn Snyder. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fabulous? That's You!",
                        "When the Genius Bar needs help, they call You!"]
        
        var newMessageNumber = Int.random(in: 0...messages.count-1)
        while messageNumber == newMessageNumber {
            newMessageNumber = Int.random(in: 0...messages.count-1)
            newMessageNumber = Int.random(in: 0...messages.count-1)
        
        }
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber = Int.random(in: 0...totalNumberOfImages)
        while imageNumber == newImageNumber {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        
        if let sound = NSDataAsset(name: "sound(0)") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("Error: Could not read data from file sound(0)")
           
        }
        
    }
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn == false { // if the .isOn is NOT true
            audioPlayer.stop()
            
        }
    }
    
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
//
//        let imageName = "image" + String(imageNumber)
//        _ = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
        
        
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage (named: "image1")
//        } else if messageLabel.text == greatMessage{
//            messageLabel.text = bombMessage
//            imageView.image = UIImage (named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage (named: "image0")
//    }
    
}



