//
//  MapViewController.swift
//  project
//
//  Created by Zain Aldanaf on 15/12/2022.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
     //   let locationManager = CLLocationManager()
        
        super.viewDidLoad()
//        locationManager.delegate = self
//        locationManager.requestAlwaysAuthorization()
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//        let initial = CLLocation(latitude: 31.5016951, longitude: 34.4668445)
//        setStartingLocation(location: initial, distance: 0)

    }}
//    extension MapViewController:CLLocationManagerDelegate{
//        func locationManager(_ manager:CLLocationManager , didUpdateLocations locations : [CLLocation]){
//            let location = locations.last
//           // locations.shared.userLat = location?.coordinate.latitude ?? 0.0
//          //  locations.shared.userLat = location?.coordinate.longitude ?? 0.0
//
//
//            let center = CLLocationCoordinate2D(latitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!)
//
//            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//            map.setRegion(region, animated: true)
//            map.showsUserLocation = true
//
//        }
//
//        func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//            print (error.localizedDescription)
//        }
//
////    func setStartingLocation(location : CLLocation , distance:CLLocationDistance){
////        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
////        map.setRegion(region, animated: true)
////    }
//
//
//
//}
