//
//  AutoreleasepoolController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class AutoreleasepoolController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


//在 app 中，整个主线程其实是跑在一个自动释放池里的，并且在每个主 Runloop 结束时进行 drain 操作。这是一种必要的延迟释放的方式，因为我们有时候需要确保在方法内部初始化的生成的对象在被返回后别人还能使用，而不是立即被释放掉。


//而在 Swift 项目中，因为有了 @UIApplicationMain，我们不再需要 main 文件和 main 函数，所以原来的整个程序的自动释放池就不存在了。即使我们使用 main.swift 来作为程序的入口时，也是不需要自己再添加自动释放池的。