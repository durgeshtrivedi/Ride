//
//  RideApi.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class RideApi {
    
    static func rideRequestObjectWithParameters<T: Mappable>(path: String, parameters: [String: Any], completionHandler:  @escaping (DataResponse<[T]>) -> ()) {
        Alamofire.request(path, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseArray( completionHandler: completionHandler)
        
    }
    
}
