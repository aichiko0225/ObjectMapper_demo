// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import ObjectMapper

// MARK: Person Mappable
extension Person: Mappable {

    init?(map: Map) {
        return nil
    }
    mutating func mapping(map: Map) {
            firstName <- map["firstName"]
            lastName  <- map["lastName"]
            birthDate <- map["birthDate"]
            friend    <- map["friend.0.value"]
            lalala    <- map["lalala.value"]
    }
}



