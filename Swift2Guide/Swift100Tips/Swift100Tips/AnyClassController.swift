//
//  AnyClassController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class AnyClassController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let typeA: A3.Type = A3.self
        typeA.method()

        // 或者
        let anyClass: AnyClass = A3.self
        (anyClass as! A3.Type).method()

        let usingVCTypes: [AnyClass] = [MusicViewController.self,
                                        AlbumViewController.self]

        setupViewControllers(usingVCTypes)
    }


    func setupViewControllers(vcTypes: [AnyClass]) {
        for vcType in vcTypes {
            if vcType is UIViewController.Type {
                let vc = (vcType as! UIViewController.Type).init()
                print(vc)
            }

        }
    }
}

class A3 {
    class func method() {
        print("Hello")
    }
}

class MusicViewController: UIViewController {

}

class AlbumViewController: UIViewController {

}



/*
 /// The protocol to which all class types implicitly conform.
 ///
 /// When used as a concrete type, all known `@objc` `class` methods and
 /// properties are available, as implicitly-unwrapped-optional methods
 /// and properties respectively, on each instance of `AnyClass`. For
 /// example:
 ///
 ///     class C {
 ///       @objc class var cValue: Int { return 42 }
 ///     }
 ///
 ///     // If x has an @objc cValue: Int, return its value.
 ///     // Otherwise, return `nil`.
 ///     func getCValue(x: AnyClass) -> Int? {
 ///       return x.cValue // <===
 ///     }
 ///
 /// - SeeAlso: `AnyObject`
 public typealias AnyClass = AnyObject.Type

 
 */

/*
 通过 AnyObject.Type 这种方式所得到是一个元类型 (Meta)。
 在声明时我们总是在类型的名称后面加上 .Type，比如 A.Type 代表的是 A 这个类型的类型。
 也就是说，我们可以声明一个元类型来存储 A 这个类型本身，而在从 A 中取出其类型时，我们需要使用到 .self：
 */


/*
 Type 表示的是某个类型的元类型，而在 Swift 中，除了 class，struct 和 enum 这三个类型外，我们还可以定义 protocol。
 对于 protocol 来说，有时候我们也会想取得接口的元类型。
 这时我们可以在某个 protocol 的名字后面使用 .Protocol 来获取，使用的方法和 .Type 是类似的。
 */


