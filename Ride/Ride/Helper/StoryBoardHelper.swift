//
//  StoryBoardHelper.swift
//  Ride
//
//  Created by Durgesh Trivedi on 15/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import UIKit

enum StoryBoardIdentifier {
    
static let locationViewController = "LocationViewController"
static let storyBordName = "Main"
}

class StoryBoardHelper {
    static func loadLocationViewController(storyBoardName: String, storyBoardIdentifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
        return  storyboard.instantiateViewController(withIdentifier: storyBoardIdentifier)
    }
}
