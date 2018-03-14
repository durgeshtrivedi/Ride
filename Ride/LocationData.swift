//
//  LocationData.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import ObjectMapper

struct LocationData: Mappable {
    init?(map: Map) {
    }
    
    
    var id = 0
    var lat = ""
    var lang = ""
    var name = ""
    var cost_per_minute = ""
    var max_reserve_time_mins = 0
    var min_reserve_time_mins = 0
    var is_reserved = false
    var reserved_until = ""
    
    
    mutating func mapping(map: Map) {
        id <- map ["id"]
        lat <- map["lat"]
        lang <- map["lang"]
        name <- map["name"]
        cost_per_minute <- map ["cost_per_minute"]
        max_reserve_time_mins <- map["min_reserve_time_mins"]
        is_reserved <- map["is_reserved"]
        reserved_until <- map["reserved_until"]
    }
    
    
}
