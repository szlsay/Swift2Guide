//
//  ViewController.swift
//  Swift2Guide
//
//  Created by https://github.com/STShenZhaoliang/Swift2Guide on 16/2/18.
//  Copyright © 2016年 shentian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        self.simpleValues()
//        self.controlFlow()
        functionsAndClosures()
        
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
    
    func controlFlow()
    {
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        print(teamScore)
        
        let optionalString: String? = "Hello"
        print(optionalString == nil)
        
        let optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        print("\(__FUNCTION__) \(greeting)")
        
        let nickName: String? = nil
        let fullName: String = "John Appleseed"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        
        print("\(__FUNCTION__) \(informalGreeting)")
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
    
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        var largest = 0
        for (_, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        print(largest)
        
        
        var n = 2
        while n < 100 {
            n = n * 2
        }
        print(n)
        
        var m = 2
        repeat {
            m = m * 2
        } while m < 100
        print(m)
        
        
        
        var firstForLoop = 0
        for i in 0..<4 {
            firstForLoop += i
        }
        print(firstForLoop)
        
        var secondForLoop = 0
        for var i = 0; i < 4; ++i {
            secondForLoop += i
        }
        print(secondForLoop)
    }
    
    func functionsAndClosures()
    {
        func greet(name: String, day: String) -> String {
            return "Hello \(name), today is \(day)."
        }
        print("\(__FUNCTION__) \(greet("Bob", day: "Tuesday"))")
        
        
        func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
            var min = scores[0]
            var max = scores[0]
            var sum = 0
            
            for score in scores {
                if score > max {
                    max = score
                } else if score < min {
                    min = score
                }
                sum += score
            }
            
            return (min, max, sum)
        }
        let statistics = calculateStatistics([5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.2)
        
        func sumOf(numbers: Int...) -> Int {
            var sum = 0
            for number in numbers {
                sum += number
            }
            return sum
        }
        print("\(__FUNCTION__) \(sumOf())")
        print("\(__FUNCTION__) \(sumOf(12, 597, 43))")
        sumOf(42, 597, 12)
        
        func returnFifteen() -> Int {
            var y = 10
            func add() {
                y += 5
            }
            add()
            return y
        }
        print("\(__FUNCTION__) \(returnFifteen())")
        
        func makeIncrementer() -> (Int -> Int) {
            func addOne(number: Int) -> Int {
                return 1 + number
            }
            return addOne
        }
        let increment = makeIncrementer()
        print("\(__FUNCTION__) \(increment(7))")
        
        
        
        
        func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
            for item in list {
                if condition(item) {
                    return true
                }
            }
            return false
        }
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        
        let numbers = [20, 19, 17, 12]
        print("\(__FUNCTION__) \(hasAnyMatches(numbers, condition: lessThanTen))")
        
        let result = numbers.map({
            (number: Int) -> Int in
            let result = 3 * number
            return result
        })
        
        print("\(__FUNCTION__) \(result)")
        
        let mappedNumbers = numbers.map({ number in 3 * number })
        print(mappedNumbers)
        
        let sortedNumbers = numbers.sort { $0 > $1 }
        print(sortedNumbers)
        

    }
}

