//
//  OptionalChainingController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class OptionalChainingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xiaoming = Child()
        let toyName = xiaoming.pet?.toy?.name
        xiaoming.pet?.toy?.play()

        let playClosure = {(child: Child) -> () in child.pet?.toy?.play()}
        if let result: () = playClosure(xiaoming) {
            print("好开心~")
        } else {
            print("没有玩具可以玩 :(")
        }

        
        let playClosure1 = {(child: Child) -> ()? in child.pet?.toy?.play()}
        if let result: () = playClosure1(xiaoming) {
            print("好开心~")
        } else {
            print("没有玩具可以玩 :(")
        }

        
        if let toyName = xiaoming.pet?.toy?.name {
            // 太好了，小明既有宠物，而且宠物还正好有个玩具
        }
        
        // Do any additional setup after loading the view.
    }
}

class Toy {
    let name: String
    init(name: String) {
        self.name = name
    }
}


extension Toy {
    func play() {
        //...
    }
}


class Pet {
    var toy: Toy?
}

class Child {
    var pet: Pet?
}
