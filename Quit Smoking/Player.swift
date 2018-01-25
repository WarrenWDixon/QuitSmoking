//
//  Player.swift
//  Quit Smoking
//
//  Created by Warren Dixon on 10/7/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import Foundation
import AVFoundation

class Player: NSObject, AVAudioPlayerDelegate {
    var path: String
    var url:URL
    var volume:Float
    var playbackSpeed:Float
    
    var hypnosisPlayer: AVAudioPlayer?
    var myViewController: ViewController?
    
    override init() {
        path = Bundle.main.path(forResource: "Stop_Smoking_Now", ofType:"mp3")!
        //path = Bundle.main.path(forResource: "sine2", ofType:"aiff")!
        url = URL(fileURLWithPath: path)
        volume = 0.5
        playbackSpeed = 1.0
        
       
        
        
        
    }
    
    func initHypnosis() {
        path = Bundle.main.path(forResource: "Stop_Smoking_Now", ofType:"mp3")!
        //path = Bundle.main.path(forResource: "sine2", ofType:"aiff")!
        url = URL(fileURLWithPath: path)
        do {
            hypnosisPlayer = try AVAudioPlayer(contentsOf: url)
            hypnosisPlayer?.enableRate = true
            hypnosisPlayer?.rate = 1.0
            hypnosisPlayer?.delegate = self
            let audioSession = AVAudioSession.sharedInstance()
            do {
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }
            catch {
                
            }
            //print(" we initialized hypnosis player")
        } catch {
            print("initialize hypnosis player failed")
        }
        
    }
    
   
    func playMP3(){
        //print("in play mp3")
        hypnosisPlayer?.rate = 1.0
        hypnosisPlayer?.play()
       
    }
    
    func pauseMP3() {
        //print("in pause mp3")
        hypnosisPlayer?.pause()
    }
    
    func setVolume(vol:Float) {
        hypnosisPlayer?.volume = vol;
    }
    
    func rewindMP3() {
        hypnosisPlayer?.currentTime = 0
    }
    
    func fastforwardMP3() {
        if (hypnosisPlayer?.rate == 1.0) {
            hypnosisPlayer?.rate = 2.0
        }
        else {
            hypnosisPlayer?.rate = 1.0
        }
        hypnosisPlayer?.pause()
        hypnosisPlayer?.play()
        
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        //print("The song ended")
        hypnosisPlayer?.currentTime = 0
        myViewController?.myTest()
    }
}


