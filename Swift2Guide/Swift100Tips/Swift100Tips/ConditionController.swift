//
//  ConditionController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit


class ConditionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func someButtonPressed(sender: AnyObject) {
        #if FREE_VERSION // 免费版本, 在other swift flage 加上 -D FREE_VERSION
        #else
        #endif
    }
}

#if false
    
    #elseif true
    #else
#endif

#if os(OSX) // 可选参数 OSX, iOS

typealias Color = NSColor

#else

typealias Color = UIColor

#endif

#if arch(arm) // 可选参数 x86_64, arm, arm64, i386

#endif

