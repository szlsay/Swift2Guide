//
//  SelectorController.swift
//  Swift100Tips
//
//  Created by rkxt_ios on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class SelectorController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let someMethod = #selector(callMe)
//        let anotherMethod = #selector(callMeWithParam(_:))
//        let method = #selector(turnByAngle(_:speed:))
//        NSTimer.scheduledTimerWithTimeInterval(1, target: self,
//            selector:#selector(callMe1), userInfo: nil, repeats: true)
        
//        let method = #selector(commonFunc)
        // 编译错误，`commonFunc` 有歧义
        
//        let method1 = #selector(commonFunc as ()->())
//        let method2 = #selector(commonFunc as Int->Int)

    }
    
    func callMe() {
        //...
    }
    
    func callMeWithParam(obj: AnyObject!) {
        //...
    }
    
    func turnByAngle(theAngle: Int, speed: Float) {
        //...
    }
    
    @objc private func callMe1() {
        //...
    }
    
    func commonFunc() {
        
    }
    
    func commonFunc(input: Int) -> Int {
        return input
    }
    
 
 
}
