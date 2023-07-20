//
//  ViewController.swift
//  TimerProject
//
//  Created by eyüp yaşar demir on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "time \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timeFunction(){
        timeLabel.text = "time \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "times over"
        }
    }
    

    @IBAction func buttonClicked(_ sender: Any) {
        print("Button clicked")
    }
    
}

