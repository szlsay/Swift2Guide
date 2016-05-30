//
//  GetSelfController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class GetSelfController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//      Objective-C 的运行时
        let date = NSDate()
        let name: AnyObject! =  object_getClass(date)
        print(name)
        // 输出：
        // __NSDate

        let date1 = NSDate()
        let name1 = date1.dynamicType
        print(name1)
        // 输出：
        // __NSDate


        let string = "Hello"
        let name2 = string.dynamicType
        print(name2)
        // 输出：
        // String


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
