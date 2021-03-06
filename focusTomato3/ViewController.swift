//
//  ViewController.swift
//  focusTomato3
//
//  Created by Benjamin Bassett  on 2/12/19.
//  Copyright © 2019 com.benbassett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activity: Activity?
    
    @IBOutlet weak var sessionNameLabel: UILabel!
    @IBOutlet weak var inSessionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var totalTimeElapsedLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    var minutes: Int = 25 //eventually have this set to what the user prefers it to be from the firebase database
    var seconds: Int = 0
    
    var timer = Timer()
    
     var inSession = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
    }
    
    func setUI(){
        sessionNameLabel.text = activity?.name
        timeLabel.text = String(minutes) + ":00"
        
    }

    @IBAction func startTimer(_ sender: UIButton) {
            stopButton.isEnabled = true
            startButton.isEnabled = false
            inSessionLabel.text = "time to work!"//have fun prompts telling the user to get to work
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)


    }
    
    @IBAction func stopTimer(_ sender: UIButton) {
        timer.invalidate()
        stopButton.isEnabled = false
        startButton.isEnabled = true
    }
    
    
    @IBAction func resetTimer(_ sender: UIButton) {
        timer.invalidate()
        minutes = 25
        seconds = 0
        startButton.isEnabled = true
        updateTimeLabel()
        
    }
    
    @IBAction func completeSession(_ sender: Any) {
    }
    
    @objc func countDown(){
        if seconds == 0 && minutes != 0 {
            minutes -= 1
            seconds = 59
            updateTimeLabel()
            
        } else if seconds == 00 && minutes == 00 {
            timer.invalidate()
            updateTimeLabel()
            inSessionLabel.text = "times up!"
            //have a way to continue onto short break for the time they want, a long break, continue working, or be complete with the activity they are dealing with
            //log the activity into firebase
            //add animation
        } else {
            seconds-=1
            updateTimeLabel()
        }
    }
    
    func updateTimeLabel (){
        if minutes < 10 && seconds < 10{
            timeLabel.text = "0\(minutes):0\(seconds)"
        } else if minutes < 10 && seconds >= 10 {
            timeLabel.text = "0\(minutes):\(seconds)"
        } else if minutes >= 10 && seconds < 10 {
            timeLabel.text = "\(minutes):0\(seconds)"
        } else {
            timeLabel.text = "\(minutes):\(seconds)"
        }
    }
    
}

