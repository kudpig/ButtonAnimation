# ButtonAnimation
シンプルなボタンアニメーション
## 概要

- pulse -> スプリングアニメーション
- flash -> 点滅
- shake -> 振動

## プレビュー
[![Image from Gyazo](https://i.gyazo.com/17398cf484779b20679b54bd2237a840.png)](https://gyazo.com/17398cf484779b20679b54bd2237a840)

## ソースコード
### ViewController
```swift
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
```

### UIButtonExtension
```swift
import UIKit

extension UIButton {
    
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        layer.add(flash, forKey: nil)
    }
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
    
}
```

## 参考動画
[Basic Button Animation - Swift & Xcode (FR)](https://www.youtube.com/watch?v=u2hxeXuFL78&t=55s)
