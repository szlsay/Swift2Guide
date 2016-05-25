//
//  ProtocolMutatingController.swift
//  Swift100Tips
//
//  Created by rkxt_ios on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ProtocolMutatingController: UIViewController {

}


protocol Vehicle
{
    var numberOfWheels: Int {get}
    var color: UIColor {get set}
    
    mutating func changeColor()
}

struct MyCar: Vehicle {
    let numberOfWheels = 4
    var color = UIColor.blueColor()
    
    mutating func changeColor() {
        color = UIColor.redColor()
    }
}

// Swift 的 mutating 关键字修饰方法是为了能在该方法中修改 struct 或是 enum 的变量，所以如果你没在接口方法里写 mutating 的话，别人如果用 struct 或者 enum 来实现这个接口的话，就不能在方法里改变自己的变量了。