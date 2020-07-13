//
//  ViewController.swift
//  04-piano
//
//  Created by Ricardo Sanchez on 6/29/20.
//  Copyright © 2020 Ricardo Sanchez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let soundsArray = ["c1", "c1s", "d1", "d1s", "e1", "f1", "f1s", "g1", "g1s", "a1", "a1s", "b1"]
    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playSound(_ sender: UIButton) {
        
        let idKey = sender.tag
        let fileName = soundsArray[idKey-1]
        print("Hemos pulsado la tecla \(idKey)")
        
        if let soundURL : URL = Bundle.main.url(forResource: fileName, withExtension: "mp3"){
            //print(soundURL)
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
            audioPlayer.play()
            
        }
    }
}

