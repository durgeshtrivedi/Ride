//
//  LocationInteractor.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import Alamofire

class LocationInteractor {
    
    weak var output: LocationInteractorOutput?
    
    static func gpsLocation() -> (Decimal, Decimal) {
        let lat  =  37.7749
        let long = 122.4194
        return (NSDecimalNumber(floatLiteral: lat).decimalValue, NSDecimalNumber(floatLiteral: long).decimalValue)
    }
}

extension LocationInteractor: LocationUseCase {
    func getLocationData() {
        let location = LocationInteractor.gpsLocation()
        let parameters = [ "lat" : location.0,
                           "lng" : location.1
        ]
        sendRendRequest(path: RideURL.location, parameters: parameters)
    }
    
    func sendRendRequest(path: String, parameters: [String: Any]) {
        RideApi.rideRequestObjectWithParameters(path: path, parameters: parameters) {  [weak self] (response: DataResponse<[LocationData]>) in
            let result = response.result
            self?.locationDetails(data: result)
        }
    }
    
    
    func locationDetails(data: Result<[LocationData]>) {
        switch data {
        case .success(let value):
            output?.response(result: .success(data: value))
        case .failure( _):
            output?.response(result: NetworkResult.error)
        }
    }
}
