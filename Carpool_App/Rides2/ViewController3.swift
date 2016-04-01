//
//  ViewController3.swift
//  Rides
//
//  Created by Alex Elizondo on 2/20/16.
//  Copyright © 2016 Alex Elizondo. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class ViewController3: UIViewController, CLLocationManagerDelegate {
    var coreLocationManager = CLLocationManager()
    var locationManager: LocationManager!
    
    @IBOutlet var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coreLocationManager.delegate = self
        locationManager = LocationManager.sharedInstance
        
        let authorizationCode = CLLocationManager.authorizationStatus()
        
        if authorizationCode == CLAuthorizationStatus.NotDetermined && coreLocationManager.respondsToSelector("requestAlwaysAuthorization") || coreLocationManager.respondsToSelector("requestWhenInUseAuthorization"){
            if NSBundle.mainBundle().objectForInfoDictionaryKey("NSLocationAlwaysUsageDescription") != nil {
                coreLocationManager.requestAlwaysAuthorization()
            } else {
                print ("No description provided")
            }
        }else {
            getLocation()
        }
     
    }
    func getLocation(){
        locationManager.startUpdatingLocationWithCompletionHandler { (latitude, longitude, status, verboseMessage, error) -> () in
            self.displayLocation(CLLocation(latitude: latitude, longitude: longitude))
        }
        
    }
    func displayLocation(location: CLLocation){
        myMap.setRegion(MKCoordinateRegion(center:CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude), span: MKCoordinateSpanMake(0.05, 0.05)), animated: true)
        
        let locationPinCoord = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationPinCoord
        
        myMap.addAnnotation(annotation)
        myMap.showAnnotations([annotation], animated: true)
        
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status != CLAuthorizationStatus.NotDetermined || status != CLAuthorizationStatus.Denied || status != CLAuthorizationStatus.Restricted{
            getLocation()
        }
    }
    @IBAction func updateLocation(sender: AnyObject){
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

        
    }
    

