//
//  MateController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class MateController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        func ~=<T : Equatable>(a: T, b: T) -> Bool
//
//        func ~=<T>(lhs: _OptionalNilComparisonType, rhs: T?) -> Bool
//
//        func ~=<I : IntervalType>(pattern: I, value: I.Bound) -> Bool

// 1.可以判等的类型的判断
        let password = "akfuv(3"
        switch password {
        case "akfuv(3": print("密码通过")
        default:        print("验证失败")
        }

// 2.对 Optional 的判断
        let num: Int? = nil
        switch num {
        case nil: print("没值")
        default:  print("\(num!)")
        }

//  3.对范围的判断
        let x = 0.5
        switch x {
        case -1.0...1.0: print("区间内")
        default: print("区间外")
        }


//  Swift 的 switch 就是使用了 ~= 操作符进行模式匹配，case 指定的模式作为左参数输入，而等待匹配的被 switch 的元素作为操作符的右侧参数。只不过这个调用是由 Swift 隐式地完成的。


//        let contact = ("http://onevcat.com", "onev@onevcat.com")
//
//        let mailRegex: NSRegularExpression
//        let siteRegex: NSRegularExpression
//
//        mailRegex =
//            try ~/"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
//        siteRegex =
//            try ~/"^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
//
//        switch contact {
//        case (siteRegex, mailRegex): print("同时拥有有效的网站和邮箱")
//        case (_, mailRegex): print("只拥有有效的邮箱")
//        case (siteRegex, _): print("只拥有有效的网站")
//        default: print("嘛都没有")
//        }

        // 输出
        // 同时拥有网站和邮箱
        

    }


//    func ~=(pattern: NSRegularExpression, input: String) -> Bool {
//    return pattern.numberOfMatchesInString(input,
//    options: [],
//    range: NSRange(location: 0, length: input.characters.count)) > 0
//    }

}

//当然，从概念上来说正则匹配只是模式匹配的一个子集



//prefix operator ~/ {}
//
//prefix func ~/(pattern: String) -> NSRegularExpression {
//
//    return NSRegularExpression(pattern: pattern, options: .CaseInsensitive); throw {}
////    return NSRegularExpression(pattern: : pa)
////    return NSRegularExpression(pattern: pattern, options: nil, error: nil)
//}


