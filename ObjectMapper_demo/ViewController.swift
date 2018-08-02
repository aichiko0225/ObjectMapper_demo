//
//  ViewController.swift
//  ObjectMapper_demo
//
//  Created by 赵光飞 on 2018/8/1.
//  Copyright © 2018年 ash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let JSONString = "{\"weight\": 180}"
        let user = User(JSONString: JSONString)
        user?.age = 10
        user?.username = "ash"
        user?.birthday = Date()
        user?.weight = 180
        
        if let jsonStr = user?.toJSONString(prettyPrint: true) {
            debugPrint(jsonStr)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

