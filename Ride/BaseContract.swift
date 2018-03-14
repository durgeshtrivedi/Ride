//
//  BaseContract.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation

enum Screen {
    case location
    case details
}

protocol BaseView: RideResult {
    func initView()
}

enum NetworkResult {
    case error
    case success(data: Any?)

}

protocol RideResult {
    func success(result: Any?)
    func error(result: NetworkResult)
}

protocol Response {
    var baseView: BaseView? {set get}
    func response(result: NetworkResult)
}

extension Response {
    func response(result: NetworkResult) {
        switch result {
        case .success(let value):
            baseView?.success(result: value)
        case .error:
            baseView?.error(result: .error)
        }
    }
}
