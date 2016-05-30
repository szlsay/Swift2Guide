//
//  FatalErrorController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class FatalErrorController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let array = [1,2,3]
        array[100]

//        @noreturn public func fatalError(@autoclosure message: () -> String = default,
//            file: StaticString = #file,
//            line: UInt = #line)


        // 输出:
        // fatal error: Array index out of range


        YourClass().methodMustBeImplementedInSubclass()
        // YourClass 实现了该方法

        TheirClass().methodMustBeImplementedInSubclass()
        // 这个方法必须在子类中被重写

    }
// @noreturn，这表示调用这个方法的话可以不再需要返回值，因为程序整个都将终止。

    enum MyEnum {
        case Value1,Value2,Value3
    }


    func check(someValue: MyEnum) -> String {
        switch someValue {
        case .Value1:
            return "OK"
        case .Value2:
            return "Maybe OK"
        default:
            // 这个分支没有返回 String，也能编译通过
            fatalError("Should not show!")
        }
    }


    class MyClass {
        func methodMustBeImplementedInSubclass() {
            fatalError("这个方法必须在子类中被重写")
        }
    }

    class YourClass: MyClass {
        override func methodMustBeImplementedInSubclass() {
            print("YourClass 实现了该方法")
        }
    }

    class TheirClass: MyClass {
        func someOtherMethod() {
            
        }
    }
}


