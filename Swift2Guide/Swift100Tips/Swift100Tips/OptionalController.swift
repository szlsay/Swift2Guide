//
//  OptionalController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class OptionalController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let obj = MyClass5()
        obj.necessaryMethod() // Implemented in Class3
        obj.optionalMethod()  // Implemented in Class3
        obj.anotherOptionalMethod() // Implemented in extension

    }
}

@objc protocol OptionalProtocol0 {
    optional func optionalMethod()
}


@objc protocol OptionalProtocol1 {
    optional func optionalMethod()  // 可选
    func necessaryMethod()          // 必须
    optional func anotherOptionalMethod() // 可选
}

/*
 
使用 @objc 修饰的 protocol 就只能被 class 实现了，也就是说，对于 struct 和 enum 类型，我们是无法令它们所实现的接口中含有可选方法或者属性的。另外，实现它的 class 中的方法还必须也被标注为 @objc，或者整个类就是继承自 NSObject

 */


protocol OptionalProtocol {
    func optionalMethod()        // 可选
    func necessaryMethod()       // 必须
    func anotherOptionalMethod() // 可选
}


/*
 
 在 Swift 2.0 中，我们有了另一种选择，那就是使用 protocol extension。我们可以在声明一个 protocol 之后再用 extension 的方式给出部分方法默认的实现。
 */

extension OptionalProtocol {
    func optionalMethod() {
        print("Implemented in extension")
    }

    func anotherOptionalMethod() {
        print("Implemented in extension")
    }
}

class MyClass5: OptionalProtocol {
    func necessaryMethod() {
        print("Implemented in Class3")
    }

    func optionalMethod() {
        print("Implemented in Class3")
    }
}

