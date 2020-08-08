//
//  MapView.swift
//  MapPOC
//
//  Created by Anjali Pragati Dennis on 08/08/20.
//  Copyright © 2020 Anjali Pragati Dennis. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 47.5786, longitude: -122.1655)
        let span = MKCoordinateSpan(latitudeDelta: 0.11, longitudeDelta: 0.11)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
