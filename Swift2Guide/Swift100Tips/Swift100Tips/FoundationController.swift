//
//  FoundationController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit
import Foundation

class FoundationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let string = "/var/controller_driver/secret_photo.png" as NSString

        let components_ = string.pathComponents as NSArray
        let fileName_ = components_.lastObject as! NSString

        components_.dynamicType //_SwiftDeferredNSArray.Type
        fileName_.dynamicType   //__NSCFString.Type

        // Do any additional setup after loading the view.
    }
}

/*

这个转换不仅是自动的，而且是双向的，而且无论何时只要有可能，转换的结果会更倾向于使用 Swift 类型。也就是说，只要你不写明类型是需要 NS 开头的类型的时候，你都会得到一个 Swift 类型。这类转换有下面的对应关系：

String - NSString
Int, Float, Double, Bool 以及其他与数字有关的类型 - NSNumber
Array - NSArray
Dictionary - NSDictionary
 
 
 
 有一个需要注意的问题是 Array 和 Dictionary 在行为上和它们对应的 NS 模式的对应版本有些许不同。
 因为 Swift 的容器类型是可以装任意其他类型的，包括各种 enum 和 struct，而 NSArray 和 NSDictionary 只能放 NSObject 的子类对象。
 所以在 Array 和 Dictionary 中如果装有非 AnyObject 或者不能转为 AnyObject 的内容的话，
 做强制的转换将会抛出编译错误 (这要感谢 Swift 的强类型特性，我们可以在编译的时候就抓到这样的错误)。
 */