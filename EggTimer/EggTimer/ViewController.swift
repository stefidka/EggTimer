//
//  ViewController.swift
//  EggTimer
//
//  Created by Stefka Vacheva on 19.10.20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
   // let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}

