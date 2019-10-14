//
//  ContentView.swift
//  LocationObserverTest
//
//  Created by Daisuke TONOSAKI on 2019/10/14.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
  @ObservedObject var locationObserver = LocationObserver()
  
  var body: some View {
    VStack {
      
      MapView(coordinate: self.locationObserver.location.coordinate)
        .frame(height: 500)
      
      Spacer()
        .frame(height: 32)
      
      Text("(\(self.locationObserver.location.coordinate.latitude), \(self.locationObserver.location.coordinate.longitude))")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
