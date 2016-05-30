//
//  UnsafePointerController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class UnsafePointerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // C
//        int a = 123;
//        method(&a);   // 输出 123

        // Swift
        var a: CInt = 123
        method(&a)    // 输出 123
        

        let arr = NSArray(object: "meow")
        let str = unsafeBitCast(CFArrayGetValueAtIndex(arr, 0), CFString.self)
        // str = "meow"

    }


    /*
    如果某个 API 在 C 中是这样的话：
    void method(const int *num) {
    printf("%d",*num);
    }
 
 */

    func method(num: UnsafePointer<CInt>) {
        print(num.memory)
    }


//    对于其他的 C 中基础类型，在 Swift 中对应的类型都遵循统一的命名规则：
//    在前面加上一个字母 C 并将原来的第一个字母大写：比如 int，bool 和 char 的对应类型分别是 CInt，CBool 和 CChar。
/*
    C API           Swift API
    const Type * 	UnsafePointer
    Type *          UnsafeMutablePointer
 */

//    在 C 中，对某个指针进行取值使用的是 *，而在 Swift 中我们可以使用 memory 属性来读取相应内存中存储的内容。
/*
    func CFArrayGetValueAtIndex(theArray: CFArray!, idx: CFIndex)
        -> UnsafePointer<Void>
     
     因为 CFArray 中是可以存放任意对象的，所以这里的返回是一个任意对象的指针，相当于 C 中的 void *
 */


    /*
     Apple 将直接的指针访问冠以 Unsafe 的前缀，就是提醒我们：这些东西不安全，亲们能不用就别用了吧 (作为 Apple，另一个重要的考虑是如果避免指针的话可以减少很多系统漏洞)！在日常开发中，我们确实不太需要经常和这些东西打交道 (除了传入 NSError 指针这个历史遗留问题以外，而且在 Swift 2.0 中也已经使用异常机制替代了 NSError)。总之，尽可能地在高抽象层级编写代码，会是高效和正确的有力保证。无数先辈已经用血淋淋的教训告诉我们，要避免去做这样的不安全的操作，除非你确实知道你在做的是什么
     */

    
}
