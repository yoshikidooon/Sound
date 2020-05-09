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
    let drum_soundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapDrumButton(){
        drum_soundPlayer.currentTime=0
        
        drum_soundPlayer.play()
}

}
