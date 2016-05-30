//
//  TypeController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class TypeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        func test(arr: [Int]) {
            for i in arr {
                print(i)
            }
        }

        let a = [1,2,3]
        let b = a
        _ = b
        test(a)


        let a1 = [1,2,3]
        var b1 = a1
        b1.append(5)
        // 此时 a 和 b 的内存地址不再相同


        class MyObject {
            var num = 0
        }

        var myObject = MyObject()
        var a2 = [myObject]
        var b2 = a2

        b2.append(myObject)

        myObject.num = 100
        print(b2[0].num)   //100
        print(b2[1].num)   //100
        
        // myObject 的改动同时影响了 b[0] 和 b[1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    虽然将数组和字典设计为值类型最大的考虑是为了线程安全，但是这样的设计在存储的元素或条目数量较少时，给我们带来了另一个优点，那就是非常高效，因为 "一旦赋值就不太会变化" 这种使用情景在 Cocoa 框架中是占有绝大多数的，这有效减少了内存的分配和回收。

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



//所以，在使用数组合字典时的最佳实践应该是，按照具体的数据规模和操作特点来决定到时是使用值类型的容器还是引用类型的容器：在需要处理大量数据并且频繁操作 (增减) 其中元素时，选择 NSMutableArray 和 NSMutableDictionary 会更好，而对于容器内条目小而容器本身数目多的情况，应该使用 Swift 语言内建的 Array 和 Dictionary。

//Swift 的类型分为值类型和引用类型两种，值类型在传递和赋值时将进行复制，而引用类型则只会使用引用对象的一个 "指向"。Swift 中的 struct 和 enum 定义的类型是值类型，使用 class 定义的为引用类型。很有意思的是，Swift 中的所有的内建类型都是值类型，不仅包括了传统意义像 Int，Bool 这些，甚至连 String，Array 以及 Dictionary 都是值类型的。

//值类型的一个特点是在传递和赋值时进行复制，每次复制肯定会产生额外开销，但是在 Swift 中这个消耗被控制在了最小范围内，在没有必要复制的时候，值类型的复制都是不会发生的。