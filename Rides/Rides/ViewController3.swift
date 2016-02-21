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
    let locationManager = CLLocationManager()
    
    @IBOutlet var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        
    }
    

