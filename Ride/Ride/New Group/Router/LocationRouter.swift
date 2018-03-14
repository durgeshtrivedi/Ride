//
//  LocationRouter.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import UIKit

class LocationRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func loadModule() -> LocationViewController {
        let viewController = StoryBoardHelper.loadLocationViewController(storyBoardName: StoryBoardIdentifier.storyBordName, storyBoardIdentifier: StoryBoardIdentifier.locationViewController) as! LocationViewController
        let presenter = LocationPresenter()
        let router = LocationRouter()
        let interactor = LocationInteractor()

        viewController.presenter =  presenter

        presenter.baseView = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
    
    
}

extension LocationRouter: LocationWireframe {
    func presentScreen(screen: Screen) {
        RootRouter.presentScreen(screen: screen)
    }
    
}
