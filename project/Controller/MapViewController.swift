//
//  MapViewController.swift
//  project
//
//  Created by Zain Aldanaf on 20/12/2022.
//

import UIKit
import MapKit

class MapViewController: UIViewController ,CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    var location = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        location.delegate = self
              location.desiredAccuracy = kCLLocationAccuracyBest
              
              if isLocationServiceEnable(){
                  checkAutherzation()
              }else{
                  showAlert(msg :"enable LLocation service")
              }
    }
    func isLocationServiceEnable() -> Bool{
         return CLLocationManager.locationServicesEnabled()
     }
     func checkAutherzation(){
         switch location.authorizationStatus {
         // open the app the first time so no access
         case .notDetermined:
             location.requestWhenInUseAuthorization()
             
             break;
             // when i use the app allow just when use it
         case .authorizedWhenInUse:
             location.startUpdatingLocation()
             mapView.showsUserLocation = true
             break;
             // just when use app and in the backgrounf
         case .authorizedAlways:
             location.startUpdatingLocation()
             mapView.showsUserLocation = true
             break;
             // open the the alert and i said no
         case .denied:
             showAlert(msg: "allow location ")
             break;
             // there is no access at all
         case .restricted:
             showAlert(msg: "autherzation restricted")
             break;
         default:
             print(" defaultt" )
             break;
         }
         
         
     }
     func  locationManager(_ manager : CLLocationManager, didUpdateLocations locations : [CLLocation]){
         if let location = locations.last {
             print("location:\(location.coordinate)")
             ZoomToUserLocation(location: location)
         }
         
     }
     func ZoomToUserLocation(location:CLLocation ){
         let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500 , longitudinalMeters: 500)
         mapView.setRegion(region, animated: true)
     }
     func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
         switch status {
         // open the app the first time so no access
        
         case .authorizedWhenInUse:
             location.startUpdatingLocation()
             mapView.showsUserLocation = true
             break;
             // just when use app and in the backgrounf
         case .authorizedAlways:
             location.startUpdatingLocation()
             mapView.showsUserLocation = true
             break;
             // open the the alert and i said no
         case .denied:
             showAlert(msg: "allow location ")
             break;
         default:
             print(" defaultt" )
             break;
         }
         
     }
     func showAlert (msg : String){
         let alert = UIAlertController(title: "alert", message: msg, preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "close", style: .default))
         present(alert, animated: true, completion: nil)
         
     }

   

}
