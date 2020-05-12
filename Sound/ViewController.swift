//
//  ViewController.swift
//  Sound
//
//  Created by 藤田佳己 on 2020/05/03.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    let drum_soundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    let piano_soundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "piano_sound")!.data)
    let guitar_soundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitar_sound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drum_playing_image"), for: .normal)
        
        drum_soundPlayer.currentTime=0
        
        drum_soundPlayer.play()
}
    @IBAction func touchDownPianoButton(){
            
            pianoButton.setImage(UIImage(named: "piano_playing_image"), for: .normal)
            
            piano_soundPlayer.currentTime=0
            
            piano_soundPlayer.play()
    }
    
    @IBAction func touchDownGuitarButton(){
               
               guitarButton.setImage(UIImage(named: "guitar_playing_image"), for: .normal)
               
               guitar_soundPlayer.currentTime=0
               
               guitar_soundPlayer.play()
       }
    
    @IBAction func touchUpDrumButton() {
        
        drumButton.setImage(UIImage(named: "drum_image"), for: .normal)
        
    }
    
    @IBAction func touchUpPainoButton() {
        
        pianoButton.setImage(UIImage(named: "piano_image"), for: .normal)
        
    }
    
    @IBAction func touchUpGuitarButton() {
        
        guitarButton.setImage(UIImage(named: "guitar_image"), for: .normal)
        
    }


}
