//
//  DynamicTypeController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class Pet0 {}
class Cat0: Pet0 {}
class Dog0: Pet0 {}

func printPet(pet: Pet0) {
    print("Pet")
}

func printPet(cat: Cat0) {
    print("Meow")
}

func printPet(dog: Dog0) {
    print("Bark")
}

func printThem(pet: Pet0, _ cat: Cat0) {
    printPet(pet)
    printPet(cat)

    if let aCat = pet as? Cat0 {
        printPet(aCat)
    } else if let aDog = pet as? Dog0 {
        printPet(aDog)
    }
    printPet(cat)
}


class DynamicTypeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        printPet(Cat0()) // Meow
        printPet(Dog0()) // Bark
        printPet(Pet0()) // Pet

        printThem(Dog0(), Cat0())

        // Do any additional setup after loading the view.
    }

    /*
     因为 Swift 默认情况下是不采用动态派发的，因此方法的调用只能在编译时决定。
     */
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
