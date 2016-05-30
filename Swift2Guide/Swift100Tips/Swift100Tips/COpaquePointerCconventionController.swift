//
//  COpaquePointerCconventionController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class COpaquePointerCconventionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

let callback: @convention(c) (Int32, Int32) -> Int32 = {
    (x, y) -> Int32 in
    return x + y
}


//        let result = cFunction(callback)
//        print(result)
        // 输出：
        // 3


//
//        let result = cFunction {
//            (x, y) -> Int32 in
//            return x + y
//        }
//        print(result)


    }

    
}


/*
 在 C 或 C++ 中被叫做不透明指针 (Opaque Pointer)，顾名思义，它的实现和表意对使用者来说是不透明的。
 
 Swift 中对应这类不透明指针的类型是 COpaquePointer，它用来表示那些在 Swift 中无法进行类型描述的 C 指针。
 
 COpaquePointer 在 Swift 中扮演的是指针转换的中间人的角色，我们可以通过这个类型在不同指针类型减进行转换。
 
 另外一种重要的指针形式是指向函数的指针，在 C 中这种情况也并不少见，即一块存储了某个函数实际所在的位置的内存空间。从 Swift 2.0 开始，与这类指针可以被转化为闭包，不过和其他普通闭包不同，我们需要为它添加上 @convention 标注。
 
 举个例子，如果我们在 C 中有这样一个函数：

 int cFunction(int (callback)(int x, int y)) {
 return callback(1, 2);
 }

 
 */