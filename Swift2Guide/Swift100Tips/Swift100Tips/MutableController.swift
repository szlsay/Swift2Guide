//
//  MutableController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class MutableController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(sum(1,2,3,4,5))
        myFunc(1,2,3, string: "hello")

        let string = NSString(format: "hello %@", "world")
        string
    }

    func sum(input: Int...) -> Int {
        return input.reduce(0, combine: +)
    }

    func myFunc(numbers: Int..., string: String) {
        numbers.forEach {
            for i in 0..<$0 {
                print("\(i+1): \(string)")
            }
        }
    }
}
