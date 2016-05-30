//
//  StringController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class StringController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let levels = "ABCDE"
        for i in levels.characters {
            print(i)
        }
        
        // 输出：
        // ABCDE

        if (levels as NSString).containsString("BC") {
            print("包含字符串")
        }

        // 输出：
        // 包含字符串


        let levels1 = "ABCDE" as NSString

        let nsRange = NSMakeRange(1, 4)
        // 编译错误
        // Cannot invoke `stringByReplacingCharactersInRange`
        // with an argument list of type '(NSRange, withString: String)'
        levels1.stringByReplacingCharactersInRange(nsRange, withString: "AAAA")

        let indexPositionOne = (levels1 as String).startIndex.successor()
        let swiftRange = indexPositionOne ..< indexPositionOne.advancedBy(4)
        levels.stringByReplacingCharactersInRange(swiftRange, withString: "AAAA")
        // 输出：
        // AAAAA


        let nsRange1 = NSMakeRange(1, 4)
        (levels as NSString).stringByReplacingCharactersInRange(
            nsRange1, withString: "AAAA")


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

 首先虽然 String 和 NSString 有着良好的互相转换的特性，但是现在 Cocoa 所有的 API 都接受和返回 String 类型。
 我们没有必要也不必给自己凭空添加麻烦去把框架中返回的字符串做一遍转换，既然 Cocoa 鼓励使用 String，
 并且为我们提供了足够的操作 String 的方法，那为什么不直接使用呢？
 
 其次，因为在 Swift 中 String 是 struct，相比起 NSObject 的 NSString 类来说，更切合字符串的 "不变" 这一特性。通过配合常量赋值 (let) ，这种不变性在多线程编程时就非常重要了，它从原理上将程序员从内存访问和操作顺序的担忧中解放出来。另外，在不触及 NSString 特有操作和动态特性的时候，使用 String 的方法，在性能上也会有所提升。

 最后，因为 String 里的 String.CharacterView 实现了像 CollectionType 这样的接口，因此有些 Swift 的语法特性只有 String 才能使用，而 NSString 是没有的。一个典型就是 for...in 的枚举，我们可以写：

 
 */