//
//  main.swift
//  Swift语法
//
//  Created by rkxt_ios on 16/4/29.
//  Copyright © 2016年 shentian. All rights reserved.


import Foundation

print("Hello, World!")

//1 数组中的每个元素乘以2
//let array0  = [1,9,34] 
let array0 = (1...4)
let array1 = array0.map{$0 * 2}

print("\(__FUNCTION__) \(array0)")
print("\(__FUNCTION__) \(array1)")

print("\(__FUNCTION__) \("--------------------------------")")






//2 数组中的元素求和


let arrayString  = ["s", "z", "l"]
let sumString = arrayString.reduce("st", combine: +)
print("\(__FUNCTION__) \(sumString)")


let sum = array0.reduce(5, combine: *)
print("\(__FUNCTION__) \(sum)")


print("\(__FUNCTION__) \("--------------------------------")")


//3 验证在字符串中是否存在指定单词
let words = ["Swift","iOS","cocoa","OSX","tvOS"]
let tweet = "This is an example tweet larking about Swift"

let valid = !words.filter({tweet.containsString($0)}).isEmpty
let valid0 = words.contains(tweet.containsString)
let valid1 = tweet.characters.split(" ").lazy.map(String.init).contains(Set(words).contains)

print("\(__FUNCTION__) \(valid)")
print("\(__FUNCTION__) \(valid0)")
print("\(__FUNCTION__) \(valid1)")

print("\(__FUNCTION__) \("--------------------------------")")



//5 祝你生日快乐！
let name = "uraimo"
 let string = (0...4).forEach{print("Happy Birthday " + (($0 == 3) ? "dear \(name)":"to You"))}

print("\(__FUNCTION__) \(string)")

print("\(__FUNCTION__) \("--------------------------------")")


//6 过滤数组中的数字

extension SequenceType{
    typealias Element = Self.Generator.Element
    func partitionBy(fu: (Element)->Bool) -> ([Element],[Element]){
        var first=[Element]()
        var second=[Element]()
        for el in self {
            if fu(el) {
                first.append(el)
            }else{
                second.append(el)
            }
        }
        return (first,second)
    }
}
let part = [82, 58, 76, 49, 88, 90].partitionBy{$0 < 60}
print("\(__FUNCTION__) \(part)")

extension SequenceType{
    func anotherPartitionBy(fu: (Self.Generator.Element)->Bool)->([Self.Generator.Element],[Self.Generator.Element]){
        return (self.filter(fu),self.filter({!fu($0)}))
    }
}
let part2 = [82, 58, 76, 49, 88, 90].anotherPartitionBy{$0 < 60}
print("\(__FUNCTION__) \(part2)")


//???
var part3 = [82, 58, 76, 49, 88, 90].reduce( ([],[]), combine: {
    (a:([Int],[Int]),n:Int) -> ([Int],[Int]) in
    (n<60) ? (a.0+[n],a.1) : (a.0,a.1+[n])
})


print("\(__FUNCTION__) \(part3)")




print("\(__FUNCTION__) \("--------------------------------")")

//Find the minimum of an array of Ints
print( [10,-22,753,55,137,-1,-279,1034,77].sort().first! )
print( [10,-22,753,55,137,-1,-279,1034,77].reduce(Int.max, combine: min) )
print( [10,-22,753,55,137,-1,-279,1034,77].minElement()! )

//Find the maximum of an array of Ints
print( [10,-22,753,55,137,-1,-279,1034,77].sort().last! )
print( [10,-22,753,55,137,-1,-279,1034,77].reduce(Int.min, combine: max) )
print( [10,-22,753,55,137,-1,-279,1034,77].maxElement()! )

//9 并行处理
//某些语言允许用一种简单和透明的方式启用数组对功能，例如map和flatMap的并行处理，以加快顺序和独立操作的执行。
//
//此功能Swift中还不可用，但可以使用GCD构建：http://moreindirection.blogspot.it/2015/07/gcd-and-parallel-collections-in-swift.html
//
//10 找质数

NSLog("%s", __FUNCTION__)

//2016-04-29 11:47:12.991
//2016-04-29 11:47:13.031

var n = 15
var primes = Set(2...n)
(2...Int(sqrt(Double(n)))).forEach{primes.subtractInPlace((2*$0).stride(through:n, by:$0))}
//primes.sort()

NSLog("%s", __FUNCTION__)

print("\(__FUNCTION__) \(primes.sort())")
NSLog("%s", __FUNCTION__)


var sameprimes = Set(2...n)
sameprimes.subtractInPlace((2...Int(sqrt(Double(n))))
    .flatMap{ (2*$0).stride(through:n, by:$0)})
//sameprimes.sort()
print("\(__FUNCTION__) \(sameprimes.sort())")

//11 其他：通过解构元组交换
var a="asdfasdfa",b="f345345342"

//a = a^b
//b = a^b
//a = a^b
//
//a = a + b
//b = a - b
//a = a - b

var  array = [a , b];

//array.replaceRange(<#T##subRange: Range<Int>##Range<Int>#>, with: <#T##CollectionType#>)


print("\(__FUNCTION__) \(a)")
print("\(__FUNCTION__) \(b)")

(a,b) = (b,a)
//a //2
//b //1

print("\(__FUNCTION__) \(a)")
print("\(__FUNCTION__) \(b)")





