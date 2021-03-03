//
//  UIButtonExtension.swift
//  ButtonAnimation
//
//  Created by Shinichiro Kudo on 2021/03/03.
//

import UIKit

extension UIButton {
    
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6 // 振動が止まるまでの時間
        pulse.fromValue = 0.95 // スケールの初期値
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
}
