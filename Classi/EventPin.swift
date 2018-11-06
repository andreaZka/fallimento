//
//  EventPin.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 06/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit
import MapKit

class eventPin : MKPointAnnotation{
    //   let title: String?
    
    //var locationName: String?
    var type: String?
    //   let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        
        super.init()
        self.title = title
        
        self.type = type
        
        self.coordinate = coordinate
       
        
        
    }
}
