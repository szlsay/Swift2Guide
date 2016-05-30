//
//  AssertionController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class AssertionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let roomTemperature = convertToKelvin(celsius: 27)
        // roomTemperature = 300.15

        let tooCold = convertToKelvin(celsius: -300)
        // 运行时错误:
        // assertion failed:
        // 输入的摄氏温度不能低于绝对零度 : file {YOUR_FILE_PATH}, line {LINE_NUMBER}
    }

    let absoluteZeroInCelsius = -273.15

    func convertToKelvin(celsius celsius: Double) -> Double {
        assert(celsius > absoluteZeroInCelsius, "输入的摄氏温度不能低于绝对零度")
        return celsius - absoluteZeroInCelsius
    }

}

//断言 (assertion) 在 Cocoa 开发里一般用来在检查输入参数是否满足一定条件，并对其进行“论断”。

/*
 断言的另一个优点是它是一个开发时的特性，只有在 Debug 编译的时候有效，而在运行时是不被编译执行的，
 因此断言并不会消耗运行时的性能。
 这些特点使得断言成为面向程序员的在调试开发阶段非常合适的调试判断，而在代码发布的时候，我们也不需要刻意去将这些断言手动清理掉，非常方便。
 
 在对应 target 的 Build Settings 中，我们在 Swift Compiler - Custom Flags 中的 Other Swift Flags 中添加 
 -assert-config Debug 来强制启用断言，或者
 -assert-config Release 来强制禁用断言。
 当然，除非有充足的理由，否则并不建议做这样的改动。如果我们需要在 Release 发布时在无法继续时将程序强行终止的话，应该选择使用 fatalError。
 */