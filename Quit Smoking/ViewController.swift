//
//  ViewController.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/14/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBOutlet weak var playButton: UIBarButtonItem!
    
    let myPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPlayer.initHypnosis()
        pauseButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playPressed(_ sender: Any) {
        myPlayer.playMP3()
        playButton.isEnabled = false
        pauseButton.isEnabled = true
    }
    
    @IBAction func rewindPressed(_ sender: Any) {
        myPlayer.rewindMP3()
    }
    
    @IBAction func volumeChanged(_ sender: Any) {
        myPlayer.setVolume(vol: volumeSlider.value)
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        myPlayer.pauseMP3()
        pauseButton.isEnabled = false
        playButton.isEnabled = true
    }
}

