//
//  ShareManagerController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ShareManagerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MyManager.sharedManager
        MyManager0.sharedManager
    }
}

private let sharedInstance = MyManager()

class MyManager {
    class var sharedManager : MyManager {
        return sharedInstance
    }
}

class MyManager0 {
    class var sharedManager: MyManager {
        struct Static {
            static let sharedInstance : MyManager = MyManager()
        }
        return Static.sharedInstance
    }
}


// 建议使用这种
// Apple 将会把这个初始化包装在一个swift_once_block_invoke中，以保证他的唯一性。
class MyManger1 {
    static let sharedInstance = MyManger1()
    private init() {}
}