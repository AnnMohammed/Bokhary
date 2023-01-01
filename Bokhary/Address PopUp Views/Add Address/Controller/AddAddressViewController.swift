//
//  AddAddressViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit
import MapKit
import CoreLocation

class AddAddressViewController: UIViewController {
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var confirmButtonOutlet: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var regionTextField: UITextField!
    @IBOutlet weak var blockTextField: UITextField!
    @IBOutlet weak var roadTextField: UITextField!
    @IBOutlet weak var buildingTextField: UITextField!
    @IBOutlet weak var deliveryNotesTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }
    func initView() {
       // buttonsColors()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        locationManagerConfig()
    }
    func locationManagerConfig() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingHeading()
    }
    func buttonsColors() {
        self.confirmButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 20, title: "")
        
    }
    @IBAction func confirmButtonAction(_ sender: UIButton) {
        
    }
}
extension AddAddressViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            locationManager.stopUpdatingLocation()
            render(location)
        }
    }
    func render(_ location: CLLocation) {
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        mapView.addAnnotation(pin)
    }
}
