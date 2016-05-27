//
//  StaticClassController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class StaticClassController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

struct Point {
    let x: Double
    let y: Double

    // 存储属性
    static let zero = Point(x: 0, y: 0)

    // 计算属性
    static var ones: [Point] {
        return [Point(x: 1, y: 1),
                Point(x: -1, y: 1),
                Point(x: 1, y: -1),
                Point(x: -1, y: -1)]
    }

    // 类型方法
    static func add(p1: Point, p2: Point) -> Point {
        return Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }
}



protocol MyProtocol {
    static func foo() -> String
}

struct MyStruct: MyProtocol {
    static func foo() -> String {
        return "MyStruct"
    }
}

enum MyEnum: MyProtocol {
    static func foo() -> String {
        return "MyEnum"
    }
}

class MyClassQ: MyProtocol {
    // 在 class 中可以使用 class
    class func foo() -> String {
        return "MyClass.foo()"
    }

    // 也可以使用 static
    static func bar() -> String {
        return "MyClass.bar()"
    }
}

//在 Swift 1.2 之前 protocol 中使用的是 class 作为关键字，但这确实是不合逻辑的。Swift 1.2 和 2.0 分两次对此进行了改进。现在只需要记住结论，在任何时候使用 static 应该都是没有问题的。
