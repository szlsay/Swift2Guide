//
//  EqualController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class EqualController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class TodoItem {
    let uuid: String
    var title: String

    init(uuid: String, title: String) {
        self.uuid = uuid
        self.title = title
    }
}

extension TodoItem: Equatable {

}

func ==(lhs: TodoItem, rhs: TodoItem) -> Bool {
    return lhs.uuid == rhs.uuid
}


/*
 func ===(lhs: AnyObject?, rhs: AnyObject?) -> Bool

 它用来判断两个 AnyObject 是否是同一个引用。
 */