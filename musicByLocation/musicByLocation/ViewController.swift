//
//  ViewController.swift
//  musicByLocation
//
//  Created by Manners, William (Coll) on 27/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    let geocode = CLGeocoder()
    
    @IBOutlet var musicRecommendations: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
    }
    
    @IBAction func findMusic(_ sender: Any) {
        locationManager.startUpdatingLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let firstLocation = locations.first {
            geocode.reverseGeocodeLocation(firstLocation, completionHandler:{ (placemarks,error) in
                if error != nil {
                    self.musicRecommendations.text =
                        "Could not perform lookup of location for latitude \(firstLocation.coordinate.latitude.description)"
                } else{
                    self.musicRecommendations.text = "You are in \(placemarks?[0].locality?.description),\(placemarks?[0].country?.description)\nLatitude:" + firstLocation.coordinate.latitude.description + " \nLongitude: " + firstLocation.coordinate.longitude.description
                }
                })
//            musicRecommendations.text = "Latitude:" + firstLocation.coordinate.latitude.description
//                + " Longitude: " + firstLocation.coordinate.longitude.description
            
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            musicRecommendations.text = """
        Could not access user's location.
                Error: \(error.localizedDescription)
        """
        }
    }
    
}

