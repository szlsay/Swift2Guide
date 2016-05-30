//
//  ErrorController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ErrorController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = NSBundle.mainBundle().pathForResource("", ofType: "")!
        let file = NSFileManager.defaultManager().contentsAtPath(path)!

        do {
            try file.writeToFile("Hello", options: [])
        } catch let error as NSError {
            print ("Error: \(error.domain)")
        }




        do {
            try login("onevcat", password: "123")
        } catch LoginError.UserNotFound {
            print("UserNotFound")
        } catch LoginError.UserPasswordNotMatch {
            print("UserPasswordNotMatch")
        } catch {

        }

        let result = doSomethingParam(path)

        switch result {
        case let .Success(ok):
            let serverResponse = ok
        case let .Error(error):
            let serverResponse = error.description
        }



        do {
            try methodRethrows(1, f: methodThrows)
        } catch _ {
            
        }

        // 输出：
        // Int


    }

    enum LoginError: ErrorType {
        case UserNotFound, UserPasswordNotMatch
    }

    var users:[String: String]!

    func login(user: String, password: String) throws  {
        //users 是 [String: String]，存储[用户名:密码]

        if !users.keys.contains(user) {
            throw LoginError.UserNotFound
        }

        if users[user] != password {
            throw LoginError.UserPasswordNotMatch
        }
        
        print("Login successfully.")
    }

    enum Result {
        case Success(String)
        case Error(NSError)
    }

    func doSomethingParam(param:AnyObject) -> Result {
        //...做某些操作，成功结果放在 success 中

        let success = true

        if success {
            return Result.Success("成功完成")
        } else {
            let error = NSError(domain: "errorDomain", code: 1, userInfo: nil)
            return Result.Error(error)
        }
    }

    func methodThrows(num: Int) throws {
        if num < 0 {
            print("Throwing!")
//            throw Error.Negative
        }
        print("Executed!")
    }

    func methodRethrows(num: Int, f: Int throws -> ()) rethrows {
        try f(num)
    }
    
}


//在 Swift 2.0 中，我们甚至可以在 enum 中指定泛型，这样就使结果统一化了。

enum Result<T> {
    case Success(T)
    case Failure(NSError)
}

//在 Swift 2 时代中的错误处理，现在一般的最佳实践是对于同步 API 使用异常机制，对于异步 API 使用泛型枚举。

//首先，try 可以接 ! 表示强制执行，这代表你确定知道这次调用不会抛出异常。如果在调用中出现了异常的话，你的程序将会崩溃，这和我们在对 Optional 值用 ! 进行强制解包时的行为是一致的。另外，我们也可以在 try 后面加上 ? 来进行尝试性的运行。try? 会返回一个 Optional 值：如果运行成功，没有抛出错误的话，它会包含这条语句的返回值，否则将为 nil。和其他返回 Optional 的方法类似，一个典型的 try? 的应用场景是和 if let 这样的语句搭配使用，不过如果你用了 try? 的话，就意味着你无视了错误的具体类型

/*
 简单理解的话你可以将 rethrows 看做是 throws 的“子类”，rethrows 的方法可以用来重载那些被标为 throws 的方法或者参数，或者用来满足被标为 throws 的接口，但是反过来不行。如果你拿不准要怎么使用的话，就先记住你在要 throws 另一个 throws 时，应该将前者改为 rethrows。这样在不失灵活性的同时保证了代码的可读性和准确性。
*/




