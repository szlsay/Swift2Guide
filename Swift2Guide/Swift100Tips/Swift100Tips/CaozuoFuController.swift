//
//  CaozuoFuController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class CaozuoFuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = Vector2D(x: 2.0, y: 3.0)
        let v2 = Vector2D(x: 1.0, y: 4.0)
        let v3 = Vector2D(x: v1.x + v2.x, y: v1.y + v2.y)
        // v3 为 {x 3.0, y 7.0}
        
        let v4 = v1 + v2
        
        let v5 = v1 +* v2
        print(v3 , v4, v5)

        
    
        // Do any additional setup after loading the view.
    }
}

struct Vector2D {
    var x = 0.0
    var y = 0.0
}

func +(left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

func +* (left: Vector2D, right: Vector2D) -> Double {
    return left.x * right.x + left.y * right.y
}

infix operator +* {
    associativity none
    precedence 160
}

infix operator |- {
    associativity none
    precedence 161
}

func |-(left: Vector2D, right: Vector2D) -> Double {
    return (left.x / right.x) + (left.y * right.y)
}


class Person {
    var name: String?
    var age: Int?
}

func +(one: Person, two: Person) ->  Person
{
    let person = Person()
    person.name = one.name! + two.name!
    person.age = one.age! + two.age!
    return person
}


//infix
//
//表示要定义的是一个中位操作符，即前后都是输入；其他的修饰子还包括 prefix 和 postfix，不再赘述；
//
//associativity
//
//定义了结合律，即如果多个同类的操作符顺序出现的计算顺序。比如常见的加法和减法都是 left，就是说多个加法同时出现时按照从左往右的顺序计算 (因为加法满足交换律，所以这个顺序无所谓，但是减法的话计算顺序就很重要了)。点乘的结果是一个 Double，不再会和其他点乘结合使用，所以这里写成 none；
//
//precedence
//
//运算的优先级，越高的话越优先进行运算。Swift 中乘法和除法的优先级是 150，加法和减法是 140，这里我们定义点积优先级 160，就是说应该早于普通的乘除进行运算。
