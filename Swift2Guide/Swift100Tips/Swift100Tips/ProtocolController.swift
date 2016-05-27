//
//  ProtocolController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ProtocolController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let instance = Class()
        let num = (instance as A).bar()  // 1
        let str = (instance as B).bar()  // "Hi"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


//protocol<ProtocolA, ProtocolB, ProtocolC>


//protocol ProtocolD: ProtocolA, ProtocolB, ProtocolC {
//
//}

protocol KittenLike {
    func meow() -> String
}

protocol DogLike {
    func bark() -> String
}

protocol TigerLike {
    func aou() -> String
}

class MysteryAnimal: KittenLike, DogLike, TigerLike {
    func meow() -> String {
        return "meow"
    }

    func bark() -> String {
        return "bark"
    }

    func aou() -> String {
        return "aou"
    }
}


protocol PetLike: KittenLike, DogLike {

}

protocol CatLike: KittenLike, TigerLike {

}

struct SoundChecker {
    static func checkPetTalking(pet: PetLike) {
        //...
    }

    static func checkCatTalking(cat: CatLike) {
        //...
    }
}

protocol A {
    func bar() -> Int
}

protocol B {
    func bar() -> String
}

class Class: A, B {
    func bar() -> Int {
        return 1
    }

    func bar() -> String {
        return "Hi"
    }
}
