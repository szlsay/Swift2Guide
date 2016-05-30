//
//  RangeController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class RangeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let test = "helLo"
        let interval = "a"..."z"
        for c in test.characters {
            if !interval.contains(String(c)) {
                print("\(c) 不是小写字母")
            }
        }
        
        // 输出
        // L 不是小写字母
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
 
 /// Forms a closed range that contains both `minimum` and `maximum`.
 func ...<Pos : ForwardIndexType>(minimum: Pos, maximum: Pos)
 -> Range<Pos>

 /// Forms a closed range that contains both `start` and `end`.
 /// Requres: `start <= end`
 func ...<Pos : ForwardIndexType where Pos : Comparable>(start: Pos, end: Pos)
 -> Range<Pos>


 /// Forms a half-open range that contains `minimum`, but not
 /// `maximum`.
 func ..<<Pos : ForwardIndexType>(minimum: Pos, maximum: Pos)
 -> Range<Pos>

 /// Forms a half-open range that contains `start`, but not
 /// `end`.  Requires: `start <= end`
 func ..<<Pos : ForwardIndexType where Pos : Comparable>(start: Pos, end: Pos)
 -> Range<Pos>


 /// Returns a closed interval from `start` through `end`
 func ...<T : Comparable>(start: T, end: T) -> ClosedInterval<T>

 /// Returns a half-open interval from `start` to `end`
 func ..<<T : Comparable>(start: T, end: T) -> HalfOpenInterval<T>

除了我们常用的输入 Int 或者 Double，返回一个 Range 以外，这个操作符还有一个接受 Comparable 的输入，并返回 ClosedInterval 或 HalfOpenInterval 的重载。在 Swift 中，除了数字以外另一个实现了 Comparable 的基本类型就是 String。
 
 
 在日常开发中，我们可能会需要确定某个字符是不是有效的 ASCII 字符，和上面的例子很相似，我们可以使用 \0...~ 这样的 ClosedInterval 来进行 (\0 和 ~ 分别是 ASCII 的第一个和最后一个字符)。

 */
