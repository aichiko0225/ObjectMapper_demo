//
//  ObjectMapper_demoTests.swift
//  ObjectMapper_demoTests
//
//  Created by 赵光飞 on 2018/8/1.
//  Copyright © 2018年 ash. All rights reserved.
//

import XCTest
//@testable import ObjectMapper_demo
import ObjectMapper

class ObjectMapper_demoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let lilei = User()
        lilei.username = "李雷"
        lilei.age = 18
        
        let meimei = User()
        meimei.username = "梅梅"
        meimei.age = 17
        meimei.bestFriend = lilei
        
        let lileiDic:[String: Any] = lilei.toJSON()
        print(lileiDic)
        
        let meimeiDic:[String: Any] = meimei.toJSON()
        print(meimeiDic)
        
        let users = [lilei, meimei]
        let usersArray:[[String: Any]]  = users.toJSON()
        print(usersArray)
        
    }
    
    func testToModel() {
        let meimeiDic: [String : Any] = ["age": 17, "username": "梅梅",
                         "best_friend": ["age": 18, "username": "李雷"]]
        
        let meimei = User(JSON: meimeiDic)
        XCTAssert((meimei?.username?.count) ?? 0 > 0)
        
         
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
