//
//  CurryingController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class CurryingController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let addToFour = addTwoNumbers(4)
        let result = addToFour(num: 6)

        print(result)
        
        let addTwo = addTo(2)    // addTwo: Int -> Int
        let result1 = addTwo(6)   // result = 8
        print(result1)
        
        let greaterThan10 = greaterThan(10);
        
        print( greaterThan10(13) )   // => true
        print(  greaterThan10(9)  )    // => false

        let greater1 = greaterThan1(10)
        print(greater1(input: 13))
        print(greater1(input: 9))
    }

    func addTwoNumbers(a: Int)(num: Int) -> Int {
        return a + num
    }
    
    func addTo(adder: Int) -> Int -> Int {
        return {
            num in
            return num + adder
        }
    }
    
    func greaterThan(comparer: Int) -> Int -> Bool {
        return { $0 > comparer }
    }
    
    func greaterThan1(comparer: Int) (input: Int) -> Bool {
        return input > comparer
    }
    
}


protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper<T: AnyObject>:
TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    
    func performAction() -> () {
        if let t = target {
            action(t)()
        }
    }
}

enum ControlEvent {
    case TouchUpInside
    case ValueChanged
    // ...
}


class Control {
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T: AnyObject>(target: T,
        action: (T) -> () -> (),
        controlEvent: ControlEvent) {
            
            actions[controlEvent] = TargetActionWrapper(
                target: target, action: action)
    }
    
    func removeTargetForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent]?.performAction()
    }
}
