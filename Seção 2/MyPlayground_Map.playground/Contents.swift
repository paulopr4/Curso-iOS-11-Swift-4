//: A MapKit based Playground

import MapKit
import PlaygroundSupport
//-23.540135, -46.583490

let appleParkWayCoordinates = CLLocationCoordinate2DMake(-23.540135, -46.583490)

// Now let's create a MKMapView
let mapView = MKMapView(frame: CGRect(x:0, y:0, width:800, height:800))

// Define a region for our map view
var mapRegion = MKCoordinateRegion()

let mapRegionSpan = 0.02
mapRegion.center = appleParkWayCoordinates
mapRegion.span.latitudeDelta = mapRegionSpan
mapRegion.span.longitudeDelta = mapRegionSpan

mapView.setRegion(mapRegion, animated: true)

// Create a map annotation
let annotation = MKPointAnnotation()
annotation.coordinate = appleParkWayCoordinates
annotation.title = "Casa do Paulo"
annotation.subtitle = "One Apple Park Way, Cupertino, California."

mapView.addAnnotation(annotation)

// Add the created mapView to our Playground Live View
PlaygroundPage.current.liveView = mapView
