//
//  companyMapViewController.swift
//  project
//
//  Created by Zain Aldanaf on 23/12/2022.
//

import UIKit
import MapKit
class companyMapViewController: UIViewController {

    @IBOutlet weak var companyLocation: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLoc = CLLocation(latitude: 31.51809763184452, longitude: 34.44431712691567)
        
        setLocation(location: initialLoc, distance: 1000)
        addAnnotation()
    }
    
    func setLocation(location: CLLocation, distance: CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        
        companyLocation.setRegion(region, animated: true)
    }
    
    func addAnnotation(){
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 31.51809763184452, longitude: 34.44431712691567)
        
        pin.title = "The Company"
        companyLocation.addAnnotation(pin)
    }

}
