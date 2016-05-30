//
//  SelftInterfaceController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class SelftInterfaceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let object = MyClass4()
        object.num = 100

        let newObject = object.copy()
        object.num = 1

        print(object.num)     // 1
        print(newObject.num)  // 100


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


protocol IntervalType {
    //...

    /// Return `rhs` clamped to `self`.  The bounds of the result, even
    /// if it is empty, are always within the bounds of `self`
    func clamp(intervalToClamp: Self) -> Self

    //...
}

protocol Copyable {
    func copy() -> Self
}


class MyClass4: Copyable {

    var num = 1

    func copy() -> Self {
        let result = self.dynamicType.init()
        result.num = num
        return result
        // TODO: 返回什么？
        // return
    }

    required init() {}
}


/*
 Self 不仅指代的是实现该接口的类型本身，也包括了这个类型的子类。
 从概念上来说，Self 十分简单，但是实际实现一个这样的方法却稍微要转个弯。
 
 单单是这样还是无法通过编译，编译器提示我们如果想要构建一个 Self 类型的对象的话，
 需要有 required 关键字修饰的初始化方法，这是因为 Swift 必须保证当前类和其子类都能响应这个 init 方法。
 另一个解决的方案是在当前类类的声明前添加 final 关键字，告诉编译器我们不再会有子类来继承这个类型。
 在这个例子中，我们选择添加上 required 的 init 方法。
 */

