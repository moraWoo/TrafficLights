//
//  ViewController.swift
//  TrafficLights
//
//  Created by Ildar Khabibullin on 13.03.2022.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet weak var trafficLightButton: UIButton!
    
    private enum colorOfTheLight {
        case red, yellow, green
    }
    
    private var count = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 67
        yellowLight.layer.cornerRadius = 67
        greenLight.layer.cornerRadius = 67
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        trafficLightButton.layer.cornerRadius = 10
        
    }

    @IBAction func pressedButton() {
        
        var light: ViewController.colorOfTheLight
        
        if trafficLightButton.currentTitle == "START" {
            trafficLightButton.setTitle("NEXT", for: .normal)
        }

        
        if count == 0 {
            light = colorOfTheLight.red
            count += 1
        } else if count == 1 {
            light = colorOfTheLight.yellow
            count += 1
        } else {
            light = colorOfTheLight.green
            count = 0
        }
            
        
        switch light {
        case .red:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            return
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            return
        default:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            return
        }
    }
    
}

