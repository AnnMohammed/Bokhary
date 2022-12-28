//
//  DeliveryLocationMapViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 27/12/2022.
//

import UIKit
import MapKit
import CoreLocation
class DeliveryLocationMapViewController: UIViewController {
    //MARK: Props
    let locationManager = CLLocationManager()
    //MARK: IBOutlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var confirmAddressButtonOutlet: UIButton!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        locationManagerConfig()
    }
    //MARK: @IBActions
    @IBAction func confirmAddressButtonAction(_ sender: UIButton) {
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
        buttonsColors()
    }
    //MARK: View Methods
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Delivery Location"
    }
    func buttonsColors() {
        self.confirmAddressButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "Confirm Address")
    }
    func locationManagerConfig() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingHeading()
    }
}
extension DeliveryLocationMapViewController: CLLocationManagerDelegate {
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
