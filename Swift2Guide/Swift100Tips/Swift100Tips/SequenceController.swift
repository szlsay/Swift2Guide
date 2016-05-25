//
//  SequenceController.swift
//  Swift100Tips
//
//  Created by ST on 16/5/25.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class SequenceController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let arr = [0,1,2,3,4]
        
        // 对 SequenceType 可以使用 for...in 来循环访问
        for i in ReverseSequence(array: arr) {
            print("Index \(i) is \(arr[i])")
        }
        
        var g = arr.generate()
        while let obj = g.next() {
            print(obj)
        }
    }
}

// 先定义一个实现了 GeneratorType protocol 的类型
// GeneratorType 需要指定一个 typealias Element
// 以及提供一个返回 Element? 的方法 next()
class ReverseGenerator<T>: GeneratorType {
    typealias Element = T
    
    var array: [Element]
    var currentIndex = 0
    
    init(array: [Element]) {
        self.array = array
        currentIndex = array.count - 1
    }
    
    func next() -> Element? {
        if currentIndex < 0{
            return nil
        }
        else {
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }
}

// 然后我们来定义 SequenceType
// 和 GeneratorType 很类似，不过换成指定一个 typealias Generator
// 以及提供一个返回 Generator? 的方法 generate()
struct ReverseSequence<T>: SequenceType {
    var array: [T]
    
    init (array: [T]) {
        self.array = array
    }
    
    typealias Generator = ReverseGenerator<T>
    func generate() -> Generator {
        return ReverseGenerator(array: self.array)
    }
}


//extension SequenceType {
//    /// Return an `Array` containing the results of mapping `transform`
//    /// over `self`.
//    ///
//    /// - Complexity: O(N).
//    @warn_unused_result
//    public func map<T>(@noescape transform: (Self.Generator.Element) throws -> T) rethrows -> [T]
//    
//    func map<T>(@noescape transform: (Self.Generator.Element) -> T) -> [T]
//    func filter(@noescape includeElement: (Self.Generator.Element) -> Bool)
//        -> [Self.Generator.Element]
//    func reduce<T>(initial: T,
//        @noescape combine: (T, Self.Generator.Element) -> T) -> T
//}

