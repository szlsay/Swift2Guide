//
//  IntrospectionController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class IntrospectionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        class ClassA: NSObject { }
        class ClassB: ClassA { }

        let obj1: NSObject = ClassB()
        let obj2: NSObject = ClassB()

        obj1.isKindOfClass(ClassA.self)    // true
        obj2.isMemberOfClass(ClassA.self)  // false

        let obj: AnyObject = ClassB()

        if (obj is ClassA) {
            print("属于 ClassA")
        }

        if (obj is ClassB) {
            print("属于 ClassB")
        }

        let string = "String"
        if string is String {
            // Do something
        }

        // 'is' test is always true

        /*
         is 在功能上相当于原来的 isKindOfClass，可以检查一个对象是否属于某类型或其子类型。
         is 和原来的区别主要在于亮点，首先它不仅可以用于 class 类型上，也可以对 Swift 的其他像是 struct 或 enum 类型进行判断。
         */
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
