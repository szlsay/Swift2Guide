//
//  ElementController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ElementController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let numbers = [1,2,3,4,5]
        // numbers 的类型是 [Int]

        let strings = ["hello", "world"]
        // strings 的类型是 [String]


        let mixed: [Any] = [1, "two", 3]

        // 如果不指明类型，由于 UIKit 的存在
        // 将被推断为 [NSObject]
        let objectArray = [1, "two", 3]


        let any = mixed[0]  // Any 类型
        let nsObject = objectArray[0] // NSObject 类型

//        Any 其实是 protocol，而不是具体的某个类型。

        let mixed1: [CustomStringConvertible] = [1, "two", 3]

        for obj in mixed1 {
            print(obj.description)
        }



        enum IntOrString {
            case IntValue(Int)
            case StringValue(String)
        }

        let mixed2 = [IntOrString.IntValue(1),
                     IntOrString.StringValue("two"),
                     IntOrString.IntValue(3)]

        for value in mixed2 {
            switch value {
            case let .IntValue(i):
                print(i * 2)
            case let .StringValue(s):
                print(s.capitalizedString)
            }
        }
        
        // 输出：
        // 2
        // Two
        // 6
        

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
