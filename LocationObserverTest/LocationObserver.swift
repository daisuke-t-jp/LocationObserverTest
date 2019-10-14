//
//  LocationObserver.swift
//  LocationObserverTest
//
//  Created by Daisuke TONOSAKI on 2019/10/14.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import Foundation
import CoreLocation
import Combine

class LocationObserver: NSObject, ObservableObject, CLLocationManagerDelegate {
  @Published private(set) var location = CLLocation()
  
  private let locationManager: CLLocationManager
  
  override init() {
    self.locationManager = CLLocationManager()
    
    super.init()
    
    self.locationManager.delegate = self
    self.locationManager.requestWhenInUseAuthorization()
    self.locationManager.startUpdatingLocation()
  }
  
  func locationManager(_: CLLocationManager, didUpdateLocations: [CLLocation]) {
    location = didUpdateLocations.last!
    
    print(location.coordinate)
  }
  
}
