//
//  RandomController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/26.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class RandomController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let diceFaceCount: UInt32 = 6
        let randomRoll = Int(arc4random_uniform(diceFaceCount)) + 1
        print(randomRoll)
        // Do any additional setup after loading the view.
        
        for _ in 0...100 {
            print(randomInRange(1...6))
        }
    }

    func randomInRange(range: Range<Int>) -> Int {
        let count = UInt32(range.endIndex - range.startIndex)
        return Int(arc4random_uniform(count)) + range.startIndex
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
