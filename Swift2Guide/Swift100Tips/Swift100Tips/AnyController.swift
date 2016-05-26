//
//  AnyController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class AnyController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftInt: Int = 1
        let swiftString: String = "miao"
        
        var array: [AnyObject] = []
        array.append(swiftInt)
        array.append(swiftString)
        
        // 显式地声明了需要 AnyObject，编译器认为我们需要的的是 Cocoa 类型而非原生类型，而帮我们进行了自动的转换。
        
    }
}

//AnyObject 可以代表任何 class 类型的实例
//Any 可以表示任意类型，甚至包括方法 (func) 类型

/*
func someMethod() -> AnyObject? {
    // ...
    // 返回一个 AnyObject?，等价于在 Objective-C 中返回一个 id
    return result
}

let anyObject: AnyObject? = SomeClass.someMethod()
if let someInstance = anyObject as? SomeRealClass {
    // ...
    // 这里我们拿到了具体 SomeRealClass 的实例
    
    someInstance.funcOfSomeRealClass()
}
*/
