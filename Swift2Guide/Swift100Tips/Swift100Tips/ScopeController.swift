//
//  ScopeController.swift
//  Swift100Tips
//
//  Created by 沈兆良 on 16/5/30.
//  Copyright © 2016年 ST. All rights reserved.
//

import UIKit

class ScopeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let textLabel = UILabel(frame: CGRectMake(150, 80, 20, 40))
            //...
        }

        var titleLabel: UILabel = {
            let label = UILabel(frame: CGRectMake(150, 30, 20, 40))
            label.textColor = UIColor.redColor()
            label.text = "Title"
            self.view.addSubview(label)
            return label
            }()

    }

    func local(closure: ()->()) {
        closure()
    }

    override func loadView() {
        let view = UIView(frame: CGRectMake(0, 0, 320, 480))

        local {
            let titleLabel = UILabel(frame: CGRectMake(150, 30, 20, 40))
            titleLabel.textColor = UIColor.redColor()
            titleLabel.text = "Title"
            view.addSubview(titleLabel)
        }

        local {
            let textLabel = UILabel(frame: CGRectMake(150, 80, 20, 40))
            textLabel.textColor = UIColor.redColor()
            textLabel.text = "Text"
            view.addSubview(textLabel)
        }
        
        self.view = view
    }
}

/*
 self.titleLabel = ({
 UILabel *label = [[UILabel alloc]
 initWithFrame:CGRectMake(150, 30, 20, 40)];
 label.textColor = [UIColor redColor];
 label.text = @"Title";
 [view addSubview:label];
 label;
 });

 */