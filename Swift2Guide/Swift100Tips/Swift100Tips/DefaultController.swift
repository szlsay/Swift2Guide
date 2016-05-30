//
//  DefaultController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class DefaultController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Returns a localized string, using the main bundle if one is not specified.


//        public func NSLocalizedString(key: String, tableName: String? = default, bundle: NSBundle = default, value: String = default, comment: String) -> String

//        默认参数写的是 default，这是含有默认参数的方法所生成的 Swift 的调用接口。当我们指定一个编译时就能确定的常量来作为默认参数的取值时，这个取值是隐藏在方法实现内部，而不应该暴露给其他部分。与 NSLocalizedString 很相似的还有 Swift 中的各类断言.

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func sayHello1(str1: String = "Hello", str2: String, str3: String) {
        print(str1 + str2 + str3)
    }

    @warn_unused_result
    func sayHello2(str1: String,
                   str2: String,
                   str3: String = "World") {
//        print(str1 + str2 + str3)
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
