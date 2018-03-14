//
//  LocationPresenter.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation

class LocationPresenter {

    // MARK: Properties

    var baseView: BaseView?
    var router: LocationWireframe?
    var interactor: LocationUseCase?
}

extension LocationPresenter: LocationPresentation {
    func requestLocation() {
        interactor?.getLocationData()
    }
    
    // TODO: implement presentation methods
}

extension LocationPresenter: LocationInteractorOutput {

    
    // TODO: implement interactor output methods
}
