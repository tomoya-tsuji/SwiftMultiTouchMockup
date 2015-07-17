//
//  ViewController.swift
//  MultiTouchMockUp
//
//  Created by TsujiTomoya on 2015/07/14.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let rect = CGRect(x: 0,y: 0,width: 1000, height: 1000 )
//        let imageview = UIImageView(frame: rect)
        self.imageView.userInteractionEnabled = true
        self.imageView.multipleTouchEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    // MARK - TouchEvent_override
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        println("タップされました")
        
        let touch = touches.first as? UITouch
        var position = CGPointZero
        if let _touch = touch{
           position = _touch.locationInView(self.view)
        }
        println("タッチ座標は = \(position)")
        self.logView.text = "タッチ座標は = \(position)"
        
        UIGraphicsBeginImageContext(self.imageView.frame.size)
        self.imageView.image?.drawInRect(self.imageView.frame)
        var ct: CGContextRef = UIGraphicsGetCurrentContext()
        var rad: CGFloat = 15.0;
        var rect01:CGRect = CGRectMake(
            position.x - rad,
            position.y - rad,
            rad * 2.0,
            rad * 2.0)
        CGContextSetRGBFillColor(ct, 1.0, 0.0, 0.0, 0.2)
        CGContextFillEllipseInRect(ct, rect01)
        
        self.imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    // MARK - Setting FirstResponder
    override func canBecomeFirstResponder() -> Bool {
        return true;
    }
    
    // MARK - Method motionEnded
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        println("motion ended")
        self.imageView.image = nil
    }
    
    


}


