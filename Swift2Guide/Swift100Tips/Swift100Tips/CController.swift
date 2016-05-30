//
//  CController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class CController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var pointer: UnsafeMutablePointer<MyClass3>!

        pointer = UnsafeMutablePointer<MyClass3>.alloc(1)
        pointer.initialize(MyClass3())

        print(pointer.memory.a)  // 1
        
        pointer = nil


        /*
         虽然我们最后将 pointer 值为 nil，但是由于 UnsafeMutablePointer 并不会自动进行内存管理，因此其实 pointer 所指向的内存是没有被释放和回收的 (这可以从 MyClass 的 deinit 没有被调用来加以证实；这造成了内存泄露。
         */
        var pointer1: UnsafeMutablePointer<MyClass3>!
        pointer1 = UnsafeMutablePointer<MyClass3>.alloc(1)
        pointer1.initialize(MyClass3())
        print(pointer1.memory.a)
        pointer1.destroy()
        pointer1.dealloc(1)
        pointer1 = nil
        
        // 输出：
        // 1
        // deinit


        /*
            在手动处理这类指针的内存管理时，我们需要遵循的一个基本原则就是谁创建谁释放。destroy 与 dealloc 应该要与 alloc 成对出现，如果不是你创建的指针，那么一般来说你就不需要去释放它。一种最常见的例子就是如果我们是通过调用了某个方法得到的指针，那么除非文档或者负责这个方法的开发者明确告诉你应该由使用者进行释放，否则都不应该去试图管理它的内存状态：
         */

        var x:UnsafeMutablePointer<tm>!
        var t = time_t()
        time(&t)
        x = localtime(&t)
        x = nil


        /*
         最后，虽然在本节的例子中使用的都是 alloc 和 dealloc 的情况，但是指针的内存申请也可以使用 malloc 或者 calloc 来完成，这种情况下在释放时我们需要对应使用 free 而不是 dealloc。
         */

    }
}


class MyClass3 {
    var a = 1
    deinit {
        print("deinit")
    }
}


