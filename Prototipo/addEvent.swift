//
//  addEvent.swift
//  Prototipo
//
//  Created by Andrea on 30/10/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit
import MapKit

class addEvent: UITableViewController {
    
    var nRighe=0;
  @IBOutlet var descLabel: UITextView!
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func inviteButton(_ sender: Any) {
        self.isEditing = !self.isEditing
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

    @IBOutlet var personTab: UITableView!
    
   override func tab
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

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



    

  

}
