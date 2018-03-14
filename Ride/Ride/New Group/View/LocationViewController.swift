//
//  LocationViewController.swift
//  Ride
//
//  Created by Durgesh Trivedi on 14/03/18.
//  Copyright © 2018 Durgesh. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class LocationViewController: UIViewController {

    // MARK: Properties

    var presenter: LocationPresentation?

    @IBOutlet weak var mapView: MKMapView!
    // MARK: Lifecycle
    var annotations = [MKPointAnnotation]()
    
    var parkingLocations = [LocationData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.requestLocation()
    }
}

extension LocationViewController: LocationView {
    func initView() {
        
    }
    
    func success(result: Any?) {
        if let data = result as? [LocationData] {
            parkingLocations = data 
        }
        displayData()
    }
    
    func error(result: NetworkResult) {
        print("Netwrok Error")
    }
    
    func displayData() {
        if self.mapView.annotations.count == 0 {
            for location in parkingLocations {
               let lat = CLLocationDegrees.init(Double(location.lat) ?? 0.0)
               let lng = CLLocationDegrees.init(Double(location.lat) ?? 0.0 )
                let coordinates = CLLocationCoordinate2D(latitude: lat, longitude: lng)
                let locationPlacemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
                let locationAnnotation = MKPointAnnotation()
                if let location = locationPlacemark.location {
                    locationAnnotation.coordinate = location.coordinate
                }
                locationAnnotation.title = location.name
                annotations.append(locationAnnotation)
            }
            self.mapView.showAnnotations(annotations, animated: true )
        }
    }
}
