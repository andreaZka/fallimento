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
    
    @IBOutlet var descLabel: UITextView!
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var datePicker: UIDatePicker!
    
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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
