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
        // Do any additional setup after loading the view.
    }


    func setupButton() {
        pulseButton.layer.cornerRadius = 8
        FlushButton.layer.cornerRadius = 8
        ShakeButton.layer.cornerRadius = 8
    }
    
}

