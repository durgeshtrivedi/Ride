//
//  LocationContract.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation

protocol LocationView: BaseView {
    // TODO: Declare view methods
}

protocol LocationPresentation: class {
    func requestLocation()
}

protocol LocationUseCase: class {
    func getLocationData()
}

protocol LocationInteractorOutput: class, Response {
    // TODO: Declare interactor output methods
}

protocol LocationWireframe: class {
    func presentScreen(screen: Screen) 
}

