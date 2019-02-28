//
//  ViewController.swift
//  focusTomato3
//
//  Created by Benjamin Bassett  on 2/12/19.
//  Copyright © 2019 com.benbassett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sessionNameLabel: UILabel!
    @IBOutlet weak var inSessionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var totalTimeElapsedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //let timer = Timer.init(timeInterval: 25, repeats: true, block: <#T##(Timer) -> Void#>)
    }

    @IBAction func startTimer(_ sender: UIButton) {
        
        
    }
    
    @IBAction func stopTimer(_ sender: Any) {
    }
    @IBAction func resetTimer(_ sender: Any) {
    }
    @IBAction func completeSession(_ sender: Any) {
    }
}

