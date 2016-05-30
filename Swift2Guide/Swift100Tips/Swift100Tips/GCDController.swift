//
//  GCDController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class GCDController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // 创建目标队列
        let workingQueue = dispatch_queue_create("my_queue", nil)

        // 派发到刚创建的队列中，GCD 会负责进行线程调度
        dispatch_async(workingQueue) {
            // 在 workingQueue 中异步进行
            print("努力工作")
            NSThread.sleepForTimeInterval(2)  // 模拟两秒的执行时间

            dispatch_async(dispatch_get_main_queue()) {
                // 返回到主线程更新 UI
                print("结束工作，更新 UI")
            }
        }

        let time: NSTimeInterval = 2.0
        let delay1 = dispatch_time(DISPATCH_TIME_NOW,
                                  Int64(time * Double(NSEC_PER_SEC)))

        dispatch_after(delay1, dispatch_get_main_queue()) {
            print("2 秒后输出")
        }


        delay(2) { print("2 秒后输出") }


        let task = delay(5) { print("拨打 110") }

        // 仔细想一想..
        // 还是取消为妙..
        cancel(task)


    }
}

/*
 
 因为 UIKit 是只能在主线程工作的，如果我们在主线程进行繁重的工作的话，就会导致 app 出现 “卡死” 的现象：UI 不能更新，用户输入无法响应等等，是非常糟糕的用户体验。为了避免这种情况的出现，对于繁重 (如图像加滤镜等) 或会很长时间才能完成的 (如从网络下载图片) 处理，我们应该把它们放到后台线程进行，这样在用户看来 UI 还是可以交互的，也不会出现卡顿。在工作进行完成后，我们需要更新 UI 的话，必须回到主线程进行 (牢记 UI 相关的工作都需要在主线程执行，否则可能发生不可预知的错误)。
 
 */



public typealias Task = (cancel : Bool) -> Void

public func delay(time:NSTimeInterval, task:()->()) ->  Task? {

    func dispatch_later(block:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(time * Double(NSEC_PER_SEC))),
            dispatch_get_main_queue(),
            block)
    }

    var closure: dispatch_block_t? = task
    var result: Task?

    let delayedClosure: Task = {
        cancel in
        if let internalClosure = closure {
            if (cancel == false) {
                dispatch_async(dispatch_get_main_queue(), internalClosure);
            }
        }
        closure = nil
        result = nil
    }

    result = delayedClosure

    dispatch_later {
        if let delayedClosure = result {
            delayedClosure(cancel: false)
        }
    }

    return result;
}

public func cancel(task:Task?) {
    task?(cancel: true)
}

