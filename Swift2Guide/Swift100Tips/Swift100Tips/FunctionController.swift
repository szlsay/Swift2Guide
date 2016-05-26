//
//  FunctionController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class FunctionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

//    func appendQuery(var url: String,
//        key: String,
//        value: AnyObject) -> String {
//            
//            func appendQueryDictionary(var url: String,
//                key: String,
//                value: [String: AnyObject]) -> String {
//                    //...
//                    return result
//            }
//            
//            func appendQueryArray(var url: String,
//                key: String,
//                value: [AnyObject]) -> String {
//                    //...
//                    return result
//            }
//            
//            func appendQuerySingle(var url: String,
//                key: String,
//                value: AnyObject) -> String {
//                    //...
//                    return result
//            }
//
//            
//            if let dictionary = value as? [String: AnyObject] {
//                return appendQueryDictionary(url, key: key, value: dictionary)
//            } else if let array = value as? [AnyObject] {
//                return appendQueryArray(url, key: key, value: array)
//            } else {
//                return appendQuerySingle(url, key: key, value: value)
//            }
//    }
    
    

    func makeIncrementor(addNumber: Int) -> (inout Int) -> Void{
        func incrementor(inout variable: Int) -> Void {
        variable += addNumber;
        }
        return incrementor;
    }
}
