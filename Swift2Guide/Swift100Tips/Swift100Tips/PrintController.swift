//
//  PrintController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class PrintController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let meeting = Meeting(date: NSDate(timeIntervalSinceNow: 86400),
                              place: "会议室B1",
                              attendeeName: "小明")
        print(meeting)
        // 输出:
        // Meeting(date: 2015-08-10 03:15:55 +0000,
        //          place: "会议室B1", attendeeName: "小明")


        print("于 \(meeting.date) 在 \(meeting.place) 与 \(meeting.attendeeName) 进行会议")
        // 输出:
        // 于 2014-08-25 11:05:28 +0000 在 会议室B1 与 小明 进行会议
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

/*
    正确的做法应该是使用 CustomStringConvertible 接口，这个接口定义了将该类型实例输出时所用的字符串。相对于直接在原来的类型定义中进行更改，我们更应该倾向于使用一个 extension，这样不会使原来的核心部分的代码变乱变脏，是一种很好的代码组织的形式：
 */

/*
 CustomDebugStringConvertible 与 CustomStringConvertible 的作用很类似，但是仅发生在调试中使用 debugger 来进行打印的时候的输出。
 对于实现了 CustomDebugStringConvertible 接口的类型，我们可以在给 meeting 赋值后设置断点并在控制台使用类似 po meeting 的命令进行打印，控制台输出将为 CustomDebugStringConvertible 中定义的 debugDescription 返回的字符串。
 */

extension Meeting: CustomStringConvertible {
    var description: String {
        return "于 \(self.date) 在 \(self.place) 与 \(self.attendeeName) 进行会议"
    }
}

struct Meeting {
    var date: NSDate
    var place: String
    var attendeeName: String
}
