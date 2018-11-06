//
//  MapViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 06/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController , MKMapViewDelegate , CLLocationManagerDelegate{
 
    @IBOutlet  var mapView: MKMapView!
    
    var locationManager : CLLocationManager!
    var posizioneUtente : CLLocationCoordinate2D!
    var EVENTI = [event]()
    var myRoute : MKRoute!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        navigationController?.setNavigationBarHidden(true, animated: true)
        
        
        
        self.locationManager = CLLocationManager()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
//        mapView.showsUserLocation = true
//        mapView.setUserTrackingMode(.follow, animated: true)
        //mapView.userLocation.coordinate
        
        //Aggiungo i pins
        do {
            if let file = Bundle.main.url(forResource: "EventiFriday", withExtension: "json") {
                let data = try Data(contentsOf: file)
                self.EVENTI = try JSONDecoder().decode([event].self, from: data)
                
                
                for eachEvent in self.EVENTI {
                    //print(eachChiesa.nome)
                    print(eachEvent.getPin())
                    mapView.addAnnotation(eachEvent.getPin())
                    
                    let punto = CLLocationCoordinate2DMake((eachEvent.posizione.lat), (eachEvent.posizione.lon))
                    mapView.setRegion(MKCoordinateRegion(center: punto, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: true)
                    let directionsRequest = MKDirections.Request()
                    let markUser = MKPlacemark(coordinate: CLLocationCoordinate2DMake(mapView.userLocation.coordinate.latitude, mapView.userLocation.coordinate.longitude), addressDictionary: nil)
                    let markEvent = MKPlacemark(coordinate: CLLocationCoordinate2DMake(punto.latitude, punto.longitude), addressDictionary: nil)
                    
                    directionsRequest.source = MKMapItem(placemark: markEvent)
                    directionsRequest.destination = MKMapItem(placemark: markUser)
                    
                    directionsRequest.transportType = MKDirectionsTransportType.automobile
                    let directions = MKDirections(request: directionsRequest)
                    
                    directions.calculate(completionHandler: {
                        response, error in
                        
                        if error == nil {
                            self.myRoute = response!.routes[0] as MKRoute
                            self.mapView.addOverlay(self.myRoute.polyline)
                        }
                        
                    })
                }
                
            }
        }catch {
            print("Error")
        }
        
        
        //        mapView.setRegion(, animated: true)
        
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        let reuseId = "pin"
        //        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId)
        if pinView == nil {
            //            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            //            pinView?.animatesDrop = true
            pinView?.canShowCallout = true
            pinView?.isDraggable = false
            pinView?.image = UIImage(named: "avatar")
            //            pinView?.pinTintColor = .green
            
            let rightButton: AnyObject! = UIButton(type: UIButton.ButtonType.detailDisclosure)
            pinView?.rightCalloutAccessoryView = rightButton as? UIView
        }
        else {
            pinView?.annotation = annotation
        }
        
        return pinView
    }
    
    
    
//    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        if control == view.rightCalloutAccessoryView {
//            print("Segue inizio")
//            performSegue(withIdentifier: "segueDetDaMappa", sender: view)
//        }
//    }
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "segueDetDaMappa" ){
//            let destinationController = segue.destination as! DettagliChiesaViewController
//
//            //print((sender as! MKAnnotationView).annotation?.subtitle)
//            let c = (sender as! MKAnnotationView).annotation?.subtitle!
//            let codiceTmp = Int(c!)
//
//            for chiesaTmp in chiese {
//                if chiesaTmp.codice == codiceTmp {
//                    destinationController.chiesa = chiesaTmp
//                    break
//                }
//            }
//
//            //destinationController.chiesa = (sender as! LuogoDiCultoPin).id
//            //print((sender as! MKAnnotationView).annotation!.title)
//        }
//    }
    
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        let myLineRenderer = MKPolylineRenderer(polyline: myRoute.polyline)
        myLineRenderer.strokeColor = UIColor.red
        myLineRenderer.lineWidth = 3
        return myLineRenderer
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
