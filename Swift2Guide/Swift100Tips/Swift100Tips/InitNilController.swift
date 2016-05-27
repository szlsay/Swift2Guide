//
//  InitNilController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class InitNilController: UIViewController {

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


extension Int {
    init?(fromString: String) {
        self = 0
        var digit = fromString.characters.count - 1
        for c in fromString.characters {
            var number = 0
            if let n = Int(String(c)) {
                number = n
            } else {
                switch c {
                case "一": number = 1
                case "二": number = 2
                case "三": number = 3
                case "四": number = 4
                case "五": number = 5
                case "六": number = 6
                case "七": number = 7
                case "八": number = 8
                case "九": number = 9
                case "零": number = 0
                default: return nil
                }
            }

            self = self + number * Int(pow(10, Double(digit)))
            digit = digit - 1
        }
    }
}

let number1 = Int(fromString: "12")
// {Some 12}

let number2 = Int(fromString: "三二五")
// {Some 325}

let number3 = Int(fromString: "七9八")
// {Some 798}

let number4 = Int(fromString: "吃了么")
// nil

let number5 = Int(fromString: "1a4n")
// nil


//为了简化 API 和安全，Apple 已经被标记为不可用了并无法编译。而对应地，可能返回 nil 的 init 方法都加上了 ? 标记：
//convenience init?(string URLString: String)
//在新版本的 Swift 中，对于可能初始化失败的情况，我们应该始终使用可返回 nil 的初始化方法，而不是类型工厂方法。