//
//  AutoclosureController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class AutoclosureController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        logIfTrue({return 2 > 1})
        
        logIfTrue{2 > 1}
        
        logIfTrue1(2>1)
        
//      在 Swift 中，有一个非常有用的操作符，可以用来快速地对 nil 进行条件判断，那就是 ??.这个操作符可以判断输入并在当左侧的值是非 nil 的 Optional 值时返回其 value，当左侧是 nil 时返回右侧的值
        var level : Int?
        var startLevel = 1
        
        var currentLevel = level ?? startLevel
        
        
        var currentLevel1 = level > 0 || startLevel > 4
//        @warn_unused_result
//        public func ??<T>(optional: T?, @autoclosure defaultValue: () throws -> T?) rethrows -> T?
//        
//        @warn_unused_result
//        public func ??<T>(optional: T?, @autoclosure defaultValue: () throws -> T) rethrows -> T
    }

    func logIfTrue(predicate: () -> Bool) {
        if predicate() {
            print("True")
        }
    }
    
//    为什么这里要使用 autoclosure，直接接受 T 作为参数并返回不行么，为何要用 () -> T 这样的形式包装一遍，岂不是画蛇添足？其实这正是 autoclosure 的一个最值得称赞的地方。如果我们直接使用 T，那么就意味着在 ?? 操作符真正取值之前，我们就必须准备好一个默认值传入到这个方法中，一般来说这不会有很大问题，但是如果这个默认值是通过一系列复杂计算得到的话，可能会成为浪费 -- 因为其实如果 optional 不是 nil 的话，我们实际上是完全没有用到这个默认值，而会直接返回 optional 解包后的值的。这样的开销是完全可以避免的，方法就是将默认值的计算推迟到 optional 判定为 nil 之后。
    
//    @autoclosure 并不支持带有输入参数的写法，也就是说只有形如 () -> T 的参数才能使用这个特性进行简化。另外因为调用者往往很容易忽视 @autoclosure 这个特性，所以在写接受 @autoclosure 的方法时还请特别小心，如果在容易产生歧义或者误解的时候，还是使用完整的闭包写法会比较好。
    
//    func ??<T>(optional: T?, @autoclosure defaultValue: () -> T) -> T {
//        switch optional {
//        case .Some(let value):
//        return value
//        case .None:
//            return defaultValue()
//        }
//    }

    
    func logIfTrue1(@autoclosure predicate: () -> Bool) {
        if predicate() {
            print("True")
        }
    }

}
