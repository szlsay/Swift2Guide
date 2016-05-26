//
//  FuncNamingController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class FuncNamingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let car = Car(color: UIColor.redColor(), weight: 10)
        car.moveToX(10, y: 20)
        
        let myPorsche = Car.findACar("Porsche", color: UIColor.yellowColor())
        
        let myFerrari = findACar("Ferrari", color: UIColor.redColor())
    }
    
//    两者从形式和结构上都保持了高度一致，可以说，为了达到这样的视觉效果，Apple 特意将第一个参数的名称给省略掉，然后保留了其他参数的名称并与 Cocoa 框架保持一致。
    
//    在类型的 init 方法中是需要加入标签的，比如下面例子的 color 和 weight 都不能省略：
}


class Car {
    init(color: UIColor, weight: Int) {
        //...
    }
}

extension Car {
    func moveToX(x: Int, y: Int) {
        //...
    }
}

extension Car {
    class func findACar(name: String, color: UIColor) -> Car? {
        var result: Car?
        //...
        return result
    }
}

// 注意，现在不在 Car 中，而是在一个全局作用域
func findACar(name: String, color: UIColor) -> Car? {
    var result: Car?
    //...
    return result
}


