//
//  RegularController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class RegularController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mailPattern =
        "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"

        let matcher: RegexHelper
        
//        do {
//            matcher = try RegexHelper(mailPattern) 
//        }

        let maybeMailAddress = "onev@onevcat.com"

//        if matcher.match(maybeMailAddress) {
//            print("有效的邮箱地址")
//        }
        // 输出:
        // 有效的邮箱地址



        if "onev@onevcat.com" =~
            "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" {
            print("有效的邮箱地址")
        }
        // 输出:
        // 有效的邮箱地址

    }
}

infix operator =~ {
associativity none
precedence 130
}

func =~(lhs: String, rhs: String) -> Bool {
    do {
        return try RegexHelper(rhs).match(lhs)
    } catch _ {
        return false
    }
}




struct RegexHelper {
    let regex: NSRegularExpression

    init(_ pattern: String) throws {
        try regex = NSRegularExpression(pattern: pattern,
                                        options: .CaseInsensitive)
    }

    func match(input: String) -> Bool {
        let matches = regex.matchesInString(input,
                                            options: [],
                                            range: NSMakeRange(0, input.utf16.count))
        return matches.count > 0
    }
}

