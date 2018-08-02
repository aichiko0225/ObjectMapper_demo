//
//  Person.swift
//  ObjectMapper_demo
//
//  Created by 赵光飞 on 2018/8/2.
//  Copyright © 2018年 ash. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var username: String?
    var age: Int?
    var weight: Double!
    var array: [Any]?
    var dictionary: [String : Any] = [:]
    var bestFriend: User?                       // Nested User object
    var friends: [User]?                        // Array of Users
    var birthday: Date?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        username    <- map["username"]
        age         <- map["age"]
        weight      <- map["weight"]
        array       <- map["arr"]
        dictionary  <- map["dict"]
        bestFriend  <- map["best_friend"]
        friends     <- map["friends"]
        birthday    <- (map["birthday"], DateTransform())
    }
}

struct Temperature: Mappable {
    var celsius: Double?
    var fahrenheit: Double?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        celsius         <- map["celsius"]
        fahrenheit      <- map["fahrenheit"]
    }
}


protocol AutoEquatable {}

protocol AutoMappable {}

struct Person {
    
    var firstName: String
    var lastName: String
    var birthDate: Date
    var age: Int {
        return Calendar.current.dateComponents([.year],
                                               from: birthDate,
                                               to: Date()).year ?? -1
    }
}

class PersonClass: Mappable {
    
//    init() {
//        firstName = ""
//        lastName = ""
//        birthDate = Date()
//    }
    
    var firstName: String!
    var lastName: String!
    var birthDate: Date!
    var age: Int {
        return Calendar.current.dateComponents([.year],
                                               from: birthDate,
                                               to: Date()).year ?? -1
    }
    
    required init?(map: Map) {
        //return nil
        
    }
    
    func mapping(map: Map) {
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        birthDate <- map["birthDate"]
    }
}
extension PersonClass: AutoMappable {}

extension Person: AutoEquatable {}

extension Person: AutoMappable {}
