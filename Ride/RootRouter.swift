//
//  File.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import UIKit

class RootRouter {
    
    private init() {}
    static let shared = RootRouter()
    
    static func  presentScreen(screen: Screen) {
        switch screen {
        case .location:
            print("Location")
        case .details:
            print("Details")
        }
    }
    
    func presentLocationScreen() {
        let viewController = LocationRouter.loadModule() as LocationViewController
        presentView(viewController)
    }
    
    private func presentView(_ viewController: UIViewController) {
        guard let window = UIApplication.shared.delegate?.window! else { return }
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        window.rootViewController = viewController
    }
}
