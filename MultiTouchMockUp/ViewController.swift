//
//  ViewController.swift
//  MultiTouchMockUp
//
//  Created by TsujiTomoya on 2015/07/14.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.multipleTouchEnabled = YES;
        
    }

    @IBOutlet weak var logView: UITextView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


