//
//  XiaBiaoController.swift
//  Swift100Tips
//
//  Created by rkxt_ios on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class XiaBiaoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var a = [1, 2, 4, 5,6]
        a[[1, 3, 4]] = [12, 3, 45]
        print(a)
    }
}


extension Array {
    subscript(input: [Int]) -> ArraySlice<Element> {
        get {
            var result = ArraySlice<Element>()
            for i in input {
                assert(i < self.count, "Index out of range")
                result.append(self[i])
            }
            return result
        }
        set {
            for (index,i) in input.enumerate() {
                assert(i < self.count, "Index out of range")
                self[i] = newValue[index]
            }
        }
    }
}


//subscript (index: Int) -> T
//subscript (subRange: Range<Int>) -> Slice<T>