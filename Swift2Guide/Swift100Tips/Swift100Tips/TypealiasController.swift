//
//  TypealiasController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

typealias Location = CGPoint
typealias Distance = Double

func distanceBetweenPoint(location: Location,
                          toLocation: Location) -> Distance {
    let dx = Distance(location.x - toLocation.x)
    let dy = Distance(location.y - toLocation.y)
    return sqrt(dx * dx + dy * dy)
}

let origin: Location = Location(x: 0, y: 0)
let point: Location = Location(x: 1, y: 1)

let distance: Distance =  distanceBetweenPoint(origin, toLocation: point)



class TypealiasController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

//typealias是用来为已经存在的类型重新定义名字的，通过命名，可以使代码变得更加清晰。
//另一个值得一提的是 Swift 中是没有泛型接口的，但是使用 typealias，我们可以在接口里定义一个必须实现的别名，这在一定范围内也算一种折衷方案。
