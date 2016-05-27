//
//  InitController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class InitController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Cat {
    var name: String
    init() {
        name = "cat"
    }
}

class Tiger: Cat {
    let power: Int
    override init() {
        power = 10
        super.init()
        name = "tiger"
    }
}

class Tiger0: Cat {
    let power: Int
    override init() {
        power = 10
        // 如果我们不需要打改变 name 的话，
        // 虽然我们没有显式地对 super.init() 进行调用
        // 不过由于这是初始化的最后了，Swift 替我们自动完成了
    }
}

/*

一般来说，子类的初始化顺序是：

设置子类自己需要初始化的参数，power = 10
调用父类的相应的初始化方法，super.init()
对父类中的需要改变的成员进行设定，name = "tiger"
 
 */