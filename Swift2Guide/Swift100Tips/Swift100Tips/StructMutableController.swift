//
//  StructMutableController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class StructMutableController: UIViewController {


}

struct User {
    var age: Int
    var name: String
    var height: Int
    
    mutating func gainWeight(newWeight: Int) {
        height += newWeight
    }
}

