//
//  ViewController.swift
//  Swift2Guide
//
//  Created by https://github.com/STShenZhaoliang/Swift2Guide on 16/2/18.
//  Copyright © 2016年 shentian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.simpleValues()
    }
    
    func simpleValues()
    {
        let myFloat : Float = 4.0
        
        print("\(__FUNCTION__) \(myFloat)")
        
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        print("\(__FUNCTION__) \(widthLabel)")
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        print("\(__FUNCTION__) \(appleSummary)")
        print("\(__FUNCTION__) \(fruitSummary)")
        
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
        ]
        occupations["Jayne"] = "Public Relations"
        
        
        print("\(__FUNCTION__) \(shoppingList)")
        print("\(__FUNCTION__) \(occupations)")
        
        shoppingList = []
        occupations = [:]
        
        let emptyArray = [String]()
        let emptyDictionary = [String: Float]()
        print("\(__FUNCTION__) \(emptyArray)")
        print("\(__FUNCTION__) \(emptyDictionary)")
        
        
    }
}

