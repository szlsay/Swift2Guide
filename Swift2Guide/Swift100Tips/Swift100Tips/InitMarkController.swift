//
//  InitMarkController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class InitMarkController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

     在 Objective-C 中，init 方法是非常不安全的：没有人能保证 init 只被调用一次，也没有人保证在初始化方法调用以后实例的各个变量都完成初始化，甚至如果在初始化里使用属性进行设置的话，还可能会造成各种问题，虽然 Apple 也明确说明了不应该在 init 中使用属性来访问，但是这并不是编译器强制的，因此还是会有很多开发者犯这样的错误。
     
     
     */

}

class ClassA {
    let numA: Int
    init(num: Int) {
        numA = num
    }
}

class ClassB: ClassA {
    let numB: Int

    override init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}

class ClassA1 {
    let numA: Int
    init(num: Int) {
        numA = num
    }

    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassB1: ClassA1 {
    let numB: Int

    override init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}


/*
 初始化方法永远遵循以下两个原则：

 初始化路径必须保证对象完全初始化，这可以通过调用本类型的 designated 初始化方法来得到保证；
 子类的 designated 初始化方法必须调用父类的 designated 方法，以保证父类也完成初始化。
 */

class ClassA2 {
    let numA: Int
    required init(num: Int) {
        numA = num
    }

    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassB2: ClassA2 {
    let numB: Int

    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}


