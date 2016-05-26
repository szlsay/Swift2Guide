//
//  ZiMianController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ZiMianController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let my = MyBool(booleanLiteral: true)
        print(my.rawValue, my)
        
        let my0: MyBool = false
        print(my0.rawValue, my0)

    }
    

}

enum MyBool: Int {
    case myTrue, myFalse
}

extension MyBool: BooleanLiteralConvertible {
    init(booleanLiteral value: Bool) {
        self = value ? myTrue : myFalse
    }
}

class Person0 {
    let name: String
    init(name value: String) {
        self.name = value
    }
    required init(stringLiteral value: String) {
        self.name = value
    }
    
    required init(extendedGraphemeClusterLiteral value: String) {
        self.name = value
    }
    
    required init(unicodeScalarLiteral value: String) {
        self.name = value
    }

}

class Person1: StringLiteralConvertible {
    let name: String
    init(name value: String) {
        self.name = value
    }
    
//   在所有的接口定义的 init 前面我们都加上了 required 关键字，这是由初始化方法的完备性需求所决定的，这个类的子类都需要保证能够做类似的字面量转换，以确保类型安全。
    required init(stringLiteral value: String) {
        self.name = value
    }
    
    required init(extendedGraphemeClusterLiteral value: String) {
        self.name = value
    }
    
    required init(unicodeScalarLiteral value: String) {
        self.name = value
    }
}



//Swift为我们提供了一组非常有意思的接口，用来将字面量转换为特定的类型。对于那些实现了字面量转换接口的类型，在提供字面量赋值的时候，就可以简单地按照接口方法中定义的规则“无缝对应”地通过赋值的方式将值转换为对应类型。
//ArrayLiteralConvertible
//BooleanLiteralConvertible
//DictionaryLiteralConvertible
//FloatLiteralConvertible
//NilLiteralConvertible
//IntegerLiteralConvertible
//StringLiteralConvertible



//public protocol BooleanLiteralConvertible {
//    typealias BooleanLiteralType
//    /// Create an instance initialized to `value`.
//    public init(booleanLiteral value: Self.BooleanLiteralType)
//}

/// The default type for an otherwise-unconstrained Boolean literal.
//public typealias BooleanLiteralType = Bool