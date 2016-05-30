//
//  KVOController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class KVOController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let obj = Class3()
//        初始化 MyClass，当前日期: 2014-08-23 16:37:20 +0000
//        日期发生变化 Optional(2014-08-23 16:37:23 +0000)
    }
}

/*
 在 Swift 中我们也是可以使用 KVO 的，但是仅限于在 NSObject 的子类中。
 这是可以理解的，因为 KVO 是基于 KVC (Key-Value Coding) 以及动态派发技术实现的，
 而这些东西都是 Objective-C 运行时的概念。
 另外由于 Swift 为了效率，默认禁用了动态派发，因此想用 Swift 来实现 KVO，
 我们还需要做额外的工作，那就是将想要观测的对象标记为 dynamic。
 */


class MyClass8: NSObject {
    dynamic var date = NSDate()
}

private var myContext = 0

class Class3: NSObject {

    var myObject: MyClass8!

    override init() {
        super.init()
        myObject = MyClass8()
        print("初始化 MyClass，当前日期: \(myObject.date)")
        myObject.addObserver(self,
                             forKeyPath: "date",
                             options: .New,
                             context: &myContext)

        delay(3) {
            self.myObject.date = NSDate()
        }
    }

    override func observeValueForKeyPath(keyPath: String?,
                                         ofObject object: AnyObject?,
                                                  change: [String : AnyObject]?,
                                                  context: UnsafeMutablePointer<Void>)
    {
        if let change = change where context == &myContext {
            let a = change[NSKeyValueChangeNewKey]
            print("日期发生变化 \(a)")
        }
    }
}


class MyChildClass: MyClass8 {
    dynamic override var date: NSDate {
        get { return super.date }
        set { super.date = newValue }
    }
}


