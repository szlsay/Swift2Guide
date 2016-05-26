//
//  NameSpaceController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class NameSpaceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MyClass.hello()
        MyClass0.hello()
        
        // Do any additional setup after loading the view.
    }
}

struct MyClassContainer1 {
    class MyClass {
        class func hello() {
            print("hello from MyClassContainer1")
        }
    }
}

struct MyClassContainer2 {
    class MyClass {
        class func hello() {
            print("hello from MyClassContainer2")
        }
    }
}

public class MyClass {
    public class func hello() {
        print("hello from framework")
    }
}

class MyClass0 {
    class func hello() {}
}
