//
//  HashController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class HashController: UIViewController {

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/*
 所以在重写哈希方法时候所采用的策略，与判等的时候是类似的：对于非 NSObject 的类，我们需要遵守 Hashable 并根据 == 操作符的内容给出哈希算法；
 而对于 NSObject 子类，需要根据是否需要在 Objective-C 中访问而选择合适的重写方式，去实现 Hashable 的 hashValue 或者直接重写 NSObject 的 -hash 方法。
 
 在 Objective-C 中，对于 NSObject 的子类来说，其实 NSDictionary 的安全性是通过人为来保障的。对于那些重写了判等但是没有重写对应的哈希方法的子类，编译器并不能给出实质性的帮助。而在 Swift 中，如果你使用非 NSObject 的类型和原生的 Dictionary，并试图将这个类型作为字典的 key 的话，编译器将直接抛出错误。从这方面来说，如果我们尽量使用 Swift 的话，安全性将得到大大增加。

 关于哈希值，另一个特别需要提出的是，除非我们正在开发一个哈希散列的数据结构，否则我们不应该直接依赖系统所实现的哈希值来做其他操作。首先哈希的定义是单向的，对于相等的对象或值，我们可以期待它们拥有相同的哈希，但是反过来并不一定成立。其次，某些对象的哈希值有可能随着系统环境或者时间的变化而改变。因此你也不应该依赖于哈希值来构建一些需要确定对象唯一性的功能，在绝大部分情况下，你将会得到错误的结果。
 */
