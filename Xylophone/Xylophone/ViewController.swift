//
//  ViewController.swift
//  Xylophone
//
//  Created by Stefka Vacheva on 12.03.20.
//  Copyright © 2020 Stefka Vacheva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func keyPressed(_ sender: UIButton) {
          
          playSound(soundName: sender.currentTitle!)
          
          //Reduces the sender's (the button that got pressed) opacity to half.
          sender.alpha = 0.5
          
          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
          
      }
      
      func playSound(soundName: String) {
          let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
          player = try! AVAudioPlayer(contentsOf: url!)
          player.play()
          
      }
    
    

}

