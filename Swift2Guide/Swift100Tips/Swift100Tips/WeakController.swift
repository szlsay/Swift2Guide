//
//  WeakController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/27.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class WeakController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var obj: A0? = A0()
        obj = nil
        // 内存没有释放



        var xiaoMing: PersonA? = PersonA(personName: "XiaoMing")
        xiaoMing!.printName()
        xiaoMing = nil
        // 输出:
        // The name is XiaoMing，没有被释放

        // Do any additional setup after loading the view.
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


class A0 {
    let b: B0
    init() {
        b = B0()
        b.a0 = self
    }

    deinit {
        print("A deinit")
    }
}

//class B0 {
//    var a0: A0? = nil
//    deinit {
//        print("B deinit")
//    }
//}

class B0 {
    weak var a0: A0? = nil
    deinit {
        print("B deinit")
    }
}

/*
 unowned 设置以后即使它原来引用的内容已经被释放了，它仍然会保持对被已经释放了的对象的一个 "无效的" 引用，它不能是 Optional 值，也不会被指向 nil。
 
 一般使用弱引用的最常见的场景有两个：

 设置 delegate 时
 在 self 属性存储为闭包时，其中拥有对 self 引用时


 */


// RequestManager.swift
class RequestManager: RequestHandler {

    @objc func requestFinished() {
        print("请求完成")
    }

    func sendRequest() {
        let req = Request()
        req.delegate = self

        req.send()
    }
}

// Request.swift
@objc protocol RequestHandler {
    optional func requestFinished()
}

class Request {
    weak var delegate: RequestHandler!;

    func send() {
        // 发送请求
        // 一般来说会将 req 的引用传递给网络框架
    }

    func gotResponse() {
        // 请求返回
        delegate?.requestFinished?()
    }
}


class PersonA {
    let name: String
//    lazy var printName: ()->() = {
//        print("The name is \(self.name)")
//    }
//

    lazy var printName: ()->() = {
        [weak self] in
        if let strongSelf = self {
            print("The name is \(strongSelf.name)")
        }
    }


    init(personName: String) {
        name = personName
    }

    deinit {
        print("Person deinit \(self.name)")
    }
}

/*
// 标注前
{ (number: Int) -> Bool in
    //...
    return true
}

    // 标注后
    { [unowned self, weak someObject] (number: Int) -> Bool in
        //...
        return true
}
 
 */


