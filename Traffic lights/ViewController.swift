//
//  ViewController.swift
//  Traffic lights
//
//  Created by Виктор Чуриков on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightRed: UIView!
    @IBOutlet var trafficLightYellow: UIView!
    @IBOutlet var trafficLightGreen: UIView!
    @IBOutlet var startButton: UIButton!
    var valueSet = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        trafficLightRed.layer.cornerRadius = trafficLightRed.frame.size.width/2
        trafficLightYellow.layer.cornerRadius = trafficLightYellow.frame.size.width/2
        trafficLightGreen.layer.cornerRadius = trafficLightGreen.frame.size.width/2
        
        trafficLightRed.alpha = 0.2
        trafficLightYellow.alpha = 0.2
        trafficLightGreen.alpha = 0.2
    }
    @IBAction func startButtonPressed() {
        valueSet += 1
        switch valueSet {
            case 1:
                trafficLightRed.alpha = 1
                startButton.setTitle("next", for: .normal)
            case 2:
                trafficLightRed.alpha = 0.2
                trafficLightYellow.alpha = 1
            case 3:
                trafficLightYellow.alpha = 0.2
                trafficLightGreen.alpha = 1
                startButton.setTitle("finish", for: .normal)
                valueSet = -1
            default:
                trafficLightRed.alpha = 0.2
                trafficLightYellow.alpha = 0.2
                trafficLightGreen.alpha = 0.2
                startButton.setTitle("start", for: .normal)
                valueSet = 0
        }
    }
    
        
    

}

