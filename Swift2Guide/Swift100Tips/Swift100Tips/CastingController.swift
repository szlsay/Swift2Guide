//
//  CastingController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class CastingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for object in self.view.subviews {
            if object is UIView {
                let view = object 
                view.backgroundColor = UIColor.redColor()
            }
        }


        for object in self.view.subviews {
            if let view = object as? UIView {
                view.backgroundColor = UIColor.redColor()
            }
        }


        if let subviews = self.view.subviews as? [UIView] {
            for view in subviews {
                view.backgroundColor = UIColor.redColor()
            }
        }

        for view in self.view.subviews as! [UIView] {
            view.backgroundColor = UIColor.redColor()
        }
        
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
