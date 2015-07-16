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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 0,y: 0,width: 1000, height: 1000 )
        let imageview = UIImageView(frame: rect)
        self.view.userInteractionEnabled = true
        
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
    }
    
    
    


}


