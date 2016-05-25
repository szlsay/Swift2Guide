//
//  TupleController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class TupleController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRectMake(0, 0, 100, 100)
        var (small, large) = rect.divide(20, fromEdge: .MinXEdge)
        
        print(small, large)
        
        swapMe(&small, b: &large)
        print(small, large)
        
        var number = 42
        print(number)
        print(number,0.0, 0.0)
        
    }

    func swapMe<T>(inout a: T, inout b: T) {
        (a,b) = (b,a)
    }
}
