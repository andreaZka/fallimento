//
//  addEvent.swift
//  Prototipo
//
//  Created by Andrea on 30/10/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit
import MapKit

class addEvent: UITableViewController, UITextViewDelegate,MKMapViewDelegate, CLLocationManagerDelegate {
    var nRighe=0

    @IBOutlet weak var descLabel: UITextView!
    
    @IBOutlet var mapView: MKMapView! = MKMapView()
//    var locationManager: CLLocationManager!
//    var userPosition: CLLocationCoordinate2D!
/*    @IBAction func mapButton(_ sender: Any) {
        let newMarker = MKPointAnnotation()
        
        newMarker.coordinate = userPosition
//        newMarker.title = name.text
//        newMarker.subtitle = desc.text
        
//        self.map.addAnnotation(newMarker)
        print("PointAnnotation created.")
    } */
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func inviteButton(_ sender: Any) {
    
    }
    

    
    let persone = ["Pazkal","Agostino","Pietroppaolo","Felice","Camastra","Pierfrancesco"]
   

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
            case 0 where indexPath.row == 1:
                 return descLabel.frame.height
            case 1:
                return datePicker.frame.height
            case 2 where indexPath.row == 1:
                return mapView.frame.height
            default:
                return 44
        }
    }

    
    
    
    
    
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellIdentifier="rigaPerson"
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
//        if nRighe <= indexPath.row{
//            cell.textLabel?.text=persone[indexPath.row]
//        }
//        return cell
//    }
    
//   override func tab
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descLabel.delegate = self
        descLabel.text = "Insert a description of the event"
        descLabel.textColor = UIColor.lightGray
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
    
    }
        // Do any additional setup after loading the view.

   
    
    
    
/*    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        self.userPosition = userLocation.coordinate
        print ("Position updated - lat: \(userLocation.coordinate.latitude) long: \(userLocation.coordinate.longitude)")
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: userPosition, span: span)
        mapView.setRegion(region, animated: true)
    }
    */
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if descLabel.textColor == UIColor.lightGray {
            descLabel.text = ""
            descLabel.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        if descLabel.text == "" {
            
            descLabel.text = "Insert a description of the event"
            descLabel.textColor = UIColor.lightGray
        }
    }
    }
    


  /*  ovverride func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rigaPerson", for: indexPath as IndexPath)
        
        // Configure the cell...
        cell.textLabel?.text = persone[indexPath.row]
        
        return cell
    } */
    

//    override func tableView(tableView: UITableViewController, numberOfRowsInSection){
//
//        return n_righe}
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



    

  


