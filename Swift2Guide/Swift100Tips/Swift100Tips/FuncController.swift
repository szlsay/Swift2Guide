//
//  FuncController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class FuncController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func incrementor(variable: Int) -> Int {
        return variable + 1
    }
    /**
    error ++
    
    - parameter variable: <#variable description#>
    
    - returns: <#return value description#>
    */
//    func incrementor1(variable: Int) -> Int {
//        return ++variable
//    }
    
//    func incrementor2(let variable: Int) -> Int {
//        return ++variable
//    }
    
    func incrementor3(var variable: Int) -> Int {
        variable += 1
        return variable
    }
    
    func incrementor4(variable: Int) -> Int {
        var num = variable
        num += 1
        return num
    }
    
//  因为在函数内部就更改了值，所以也不需要返回了。调用也要改变为相应的形式，在前面加上 & 符号
    func incrementor5(inout variable: Int) {
        variable += 1
    }
    
//  要注意的是参数的修饰是具有传递限制的，就是说对于跨越层级的调用，我们需要保证同一参数的修饰是统一的
    func makeIncrementor(addNumber: Int) -> ((inout Int) -> ()) {
        func incrementor(inout variable: Int) -> () {
            variable += addNumber;
        }
        return incrementor;
    }
}
