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
    
    let drum_soundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drum_playing_image"), for: .normal)
        
        drum_soundPlayer.currentTime=0
        
        drum_soundPlayer.play()
}
    @IBAction func touchUpDrumButton() {
        
        drumButton.setImage(UIImage(named: "drum_image"), for: .normal)
        
    }

}
