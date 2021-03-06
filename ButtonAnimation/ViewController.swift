//
//  ViewController.swift
//  ButtonAnimation
//
//  Created by Shinichiro Kudo on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pulseButton: UIButton!
    
    @IBOutlet weak var FlushButton: UIButton!
    
    @IBOutlet weak var ShakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
    
    }


    func setupButton() {
        pulseButton.layer.cornerRadius = 8
        FlushButton.layer.cornerRadius = 8
        ShakeButton.layer.cornerRadius = 8
    }
    

    @IBAction func pulseButtonTapped(_ sender: UIButton) {
        sender.pulsate()
    }

    @IBAction func flushButtonTapped(_ sender: UIButton) {
        sender.flash()
    }
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        sender.shake()
    }
    
    
}

